defmodule ExEasyPost.User do
  @moduledoc """
  """

  @doc "Create a User"
  @spec create(map) :: ExEasyPost.Operation.t()
  def create(params) do
    %ExEasyPost.Operation{http_method: :post, params: %{user: params}, path: "users"}
  end

  @doc "Retrieve a User by id"
  @spec find(binary) :: ExEasyPost.Operation.t()
  def find(id) do
    %ExEasyPost.Operation{http_method: :get, path: "users/#{id}"}
  end

  @doc "Update a User"
  @spec update(binary, map) :: ExEasyPost.Operation.t()
  def update(id, params) do
    %ExEasyPost.Operation{http_method: :put, params: %{user: params}, path: "users/#{id}"}
  end
end
