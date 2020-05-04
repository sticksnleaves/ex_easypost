defmodule EasyPost do
  @type http_headers_t ::
          [{ String.t(), String.t() }]

  @type http_method_t ::
          :delete | :get | :post | :put

  @type response_t ::
          { :ok, EasyPost.Response.t() } | { :error, EasyPost.Response.t() | any }
end
