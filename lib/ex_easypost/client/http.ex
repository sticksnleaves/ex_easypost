defmodule ExEasyPost.Client.HTTP do
  @moduledoc """
  Specifies expected behaviour of an HTTP client.

  ExEasyPost allows you to use your HTTP client of choice, provided that it can
  be coerced into complying with this modules's specification.

  The default client is :httpoison.
  """

  @type http_method :: :get | :post | :put | :delete

  @callback request(method :: http_method, url :: binary, req_body :: binary, headers :: [{binary, binary}, ...], http_opts :: term) ::
    {:ok, %{status_code: pos_integer, body: binary}} |
    {:error, %{reason: any}}
end
