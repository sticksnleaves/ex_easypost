defmodule ExEasyPost.Operation do
  @moduledoc """
  An operation to perform against the EasyPost API.

  This module is generally not used directly, rather is constructed by an
  EasyPost resource.

  ExEasyPost works by using an `ExEasyPost.Operation` datastructure to describe
  the action to be taken. The operation can then be passed to `perform/2` to
  for execution.

  ## Example

  %ExEasyPost.Operation{
    http_method: :post,
    params: %{ tracker: %{ carrier: "USPS", tracking_code: "9400110898825022579493" } },
    path: "trackers"
  }
  |> ExEasyPost.request()
  """

  defstruct [
    headers: [],
    http_method: nil,
    params: %{},
    path: nil
  ]

  @type t :: %__MODULE__{}

  @spec perform(t, map) :: map
  def perform(operation, config) do
    request(operation, config) |> parse(config)
  end

  # private

  defp build_query(%{ http_method: :get, params: params })
    when params != %{}
  do
    "?#{URI.encode_query(params)}"
  end
  defp build_query(_operation), do: ""

  defp build_url(operation, config) do
    protocol = config[:protocol]
    host     = config[:host]
    port     = config[:port]
    path     = config[:path]
    endpoint = operation.path

    url = "#{protocol}://#{host}"

    url =
      cond do
        port -> "#{url}:#{port}"
        true -> url
      end

    "#{url}/#{path}/#{endpoint}#{build_query(operation)}"
  end

  defp encode_params(%{ http_method: :post, params: params }, %{ json_codec: parser }) do
    parser.encode!(params)
  end
  defp encode_params(_operation, _config), do: ""

  defp request(operation, config) do
    params = encode_params(operation, config)
    url    = build_url(operation, config)

    ExEasyPost.Client.request(operation.http_method, url, params, operation.headers, config)
  end

  defp parse({ :ok, %{ body: body, status_code: status_code } }, config)
    when status_code in 200..299
  do
    case body do
      "" ->
        { :ok, %{} }
      _ ->
        { :ok, config[:json_codec].decode!(body) }
    end
  end
  defp parse({ :ok, %{ body: body, status_code: status_code } }, config)
    when status_code >= 400
  do
    case body do
      "" ->
        { :error, %{} }
      _ ->
        { :error, config[:json_codec].decode!(body) }
    end
  end
  defp parse({ :error, %{ reason: reason } }, _config) do
    { :error, reason }
  end
end
