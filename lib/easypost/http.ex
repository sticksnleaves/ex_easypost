defmodule EasyPost.HTTP do
  @type response_t ::
          %{
            body: binary,
            headers: EasyPost.http_headers_t(),
            status_code: pos_integer
          }

  @callback request(
              method :: EasyPost.http_method_t(),
              url :: String.t(),
              headers :: EasyPost.http_headers_t(),
              body :: binary,
              opts :: any
            ) :: { :ok, response_t } | { :error, any }
end
