defmodule ExEasyPost.Client do
  @moduledoc false

  def request(http_method, url, params, headers, config) do
    all_headers = build_headers(headers, config)
    client = config[:http_client]
    parser = config[:json_parser]

    case client.request(http_method, url, parser.encode!(params), all_headers, config[:http_opts]) do
      {:ok, response = %{status_code: status_code}} when status_code in 200..299 ->
        {:ok, response}
      {:ok, %{body: body, status_code: status_code}} when status_code >= 400 ->
        {:error, {:http_error, status_code, parser.decode!(body)}}
      {:error, %{reason: reason}} ->
        {:error, {:client_error, reason}}
    end
  end

  # private

  defp build_headers(headers, config) do
    headers ++ [{"Authorization", "Bearer #{config[:api_key]}"}]
  end
end
