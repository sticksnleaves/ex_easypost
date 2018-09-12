defmodule ExEasyPost.Order do
  @moduledoc """
  """

  @doc "Buy an Order"
  @spec buy(binary, map) :: ExEasyPost.Operation.t()
  def buy(id, params) do
    %ExEasyPost.Operation{http_method: :post, params: params, path: "orders/#{id}/buy"}
  end

  @doc "Create an Order"
  @spec create(map) :: ExEasyPost.Operation.t()
  def create(params) do
    %ExEasyPost.Operation{http_method: :post, params: %{order: params}, path: "orders"}
  end

  @doc "Retrieve an Order by id"
  @spec find(binary) :: ExEasyPost.Operation.t()
  def find(id) do
    %ExEasyPost.Operation{http_method: :get, path: "orders/#{id}"}
  end
end
