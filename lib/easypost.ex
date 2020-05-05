defmodule EasyPost do
  alias EasyPost.{ Config, Request }

  @type http_headers_t ::
          [{ String.t(), String.t() }]

  @type http_method_t ::
          :delete | :get | :post | :put

  @type response_t ::
          { :ok, EasyPost.Response.t() } | { :error, EasyPost.Response.t() | any }

  @doc """
  Send an HTTP request to the EasyPost API.
  """
  @spec request(EasyPost.Operation.t(), EasyPost.Config.t()) :: response_t
  def request(operation, config) do
    Request.send(operation, Config.new(config))
  end
end
