defmodule ExEasyPost.Client.HTTPoison do
  @moduledoc """
  HTTPoison based HTTP client.

  Options can be set for `:httpoison` with the following config:

  ```elixir
  config :ex_easypost, :httpoison_opts,
    recv_timeout: 30_000
  ```
  """

  @behaviour ExEasyPost.Client.HTTP

  def request(method, url, body \\ "", headers \\ [], client_opts \\ []) do
    opts = client_opts ++ httpoison_opts()

    case HTTPoison.request(method, url, body, headers, opts) do
      {:ok, response} ->
        {:ok, %{status_code: response.status_code, body: response.body}}
      {:error, reason} ->
        {:error, %{reason: reason}}
    end
  end

  # private

  defp httpoison_opts do
    Application.get_env(:ex_easypost, :httpoison_opts, [])
  end
end
