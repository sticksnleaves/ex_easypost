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
    path: "/trackers"
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

    "#{url}/#{path}/#{endpoint}"
  end

  defp request(operation, config) do
    url = build_url(operation, config)

    ExEasyPost.Client.request(operation.http_method, url, operation.params, operation.headers, config)
  end

  defp parse({ :error, result }, _config), do: { :error, result }
  defp parse({ :ok, %{ body: "" } }, _config), do: %{}
  defp parse({ :ok, %{ body: body } }, config), do: config[:json_parser].decode(body)
end
