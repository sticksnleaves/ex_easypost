defmodule ExEasyPost.Insurance do
  @moduledoc """
  """

  @doc "Create an Insurance"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ insurance: params }, path: "insurances" }
  end

  @doc "Find an Insurance by id"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "insurances/#{id}" }
  end

  @doc "Retrieve a list of Insurances"
  @spec list(map) :: ExEasyPost.Operation.t
  def list(params) do
    %ExEasyPost.Operation{ http_method: :get, params: params, path: "insurances" }
  end
end
