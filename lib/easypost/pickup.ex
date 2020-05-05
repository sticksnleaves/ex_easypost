defmodule EasyPost.Pickup do
  @doc """
  Buy a `Pickup`.
  """
  @spec buy(String.t(), map) :: EasyPost.Operation.t()
  def buy(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/pickups/#{id}/buy"
    }
  end

  @doc """
  Cancel a `Pickup`.
  """
  @spec cancel(String.t()) :: EasyPost.Operation.t()
  def cancel(id) do
    %EasyPost.Operation{ method: :post, path: "/pickups/#{id}/cancel"}
  end

  @doc """
  Create a `Pickup`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/pickups" }
  end

  @doc """
  Retrieve a `Pickup`.
  """
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/pickups/#{id}" }
  end
end
