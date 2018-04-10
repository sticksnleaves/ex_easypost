defmodule ExEasyPost.Client.Hackney do
  @moduledoc """
  Hackney based HTTP client.

  Options can be set for `:hackney` with the following config:

  ```elixir
  config :ex_easypost, :hackney_opts,
    recv_timeout: 30_000
  ```
  """

  @behaviour ExEasyPost.Client.HTTP

  def request(method, url, body \\ "", headers \\ [], client_opts \\ []) do
    opts = [ :with_body ] ++ client_opts ++ hackney_opts()

    case :hackney.request(method, url, headers, body, opts) do
      {:ok, status, _headers} ->
        {:ok, %{body: "", status_code: status}}
      {:ok, status, _headers, body} ->
        {:ok, %{body: body, status_code: status}}
      {:error, reason} ->
        {:error, %{reason: reason}}
    end
  end

  # private

  defp hackney_opts do
    Application.get_env(:ex_easypost, :hackney_opts, [])
  end
end
