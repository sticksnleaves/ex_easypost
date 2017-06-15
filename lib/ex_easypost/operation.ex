defmodule ExEasyPost.Operation do
  defstruct [
    headers: [],
    http_method: nil,
    params: %{},
    path: nil
  ]

  @type t :: %__MODULE__{}

  def new(config) do
    struct(%__MODULE__{}, config)
  end

  def perform(operation, config) do
    request(operation, config)
    |> parse(config)
  end

  # private

  defp build_url(operation, config) do
    protocol = config[:protocol]
    host = config[:host]
    port = config[:port]
    path = config[:path]
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

  defp parse({:error, result}, _config), do: {:error, result}
  defp parse({:ok, %{body: ""}}, _config), do: %{}
  defp parse({:ok, %{body: body}}, config), do: config[:json_parser].decode(body)
end
