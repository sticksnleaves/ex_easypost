defmodule EasyPost.User do
  @doc """
  Create a `User`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/users" }
  end

  @doc """
  Retrieve a `User`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/users/#{id}" }
  end

  @doc """
  Update a `User`.
  """
  @spec update(String.t(), map) :: EasyPost.Operation.t()
  def update(id, params) do
    %EasyPost.Operation{ method: :put, params: params, path: "/users/#{id}" }
  end
end
