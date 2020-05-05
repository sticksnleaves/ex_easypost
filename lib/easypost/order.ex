defmodule EasyPost.Order do
  @doc """
  Buy an `Order`.
  """
  @spec buy(String.t(), map) :: EasyPost.Operation.t()
  def buy(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/orders/#{id}/buy"
    }
  end

  @doc """
  Create an `Order`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/orders" }
  end

  @doc """
  Retrieve an `Order`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/orders/#{id}" }
  end
end
