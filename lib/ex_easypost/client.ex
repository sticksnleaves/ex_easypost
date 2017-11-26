defmodule ExEasyPost.Client do
  @moduledoc false

  def request(http_method, url, params, headers, config) do
    all_headers = build_headers(headers, config)

    config[:http_client].request(http_method, url, params, all_headers, config[:http_opts])
  end

  defp build_headers(headers, config) do
    headers ++ [
      {"Content-Type", "application/json"},
      {"Authorization", "Bearer #{config[:api_key]}"}
    ]
  end
end
