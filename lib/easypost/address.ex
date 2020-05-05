defmodule EasyPost.Address do
  @doc """
  Create and/or verify an `Address`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/addresses" }
  end

  @doc """
  Retrieve an `Address`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/addresses/#{id}" }
  end
end
