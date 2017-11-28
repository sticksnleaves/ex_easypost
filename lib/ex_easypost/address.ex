defmodule ExEasyPost.Address do
  @moduledoc """
  """

  @verify [ :verify, :verify_strict ]

  @doc "Create and verify an Address"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    with_verification    = Map.take(params, @verify)
    without_verification = Map.drop(params, @verify)

    params = Map.merge(%{ address: without_verification }, with_verification)

    %ExEasyPost.Operation{ http_method: :post, params: params, path: "addresses" }
  end

  @doc "Retrieve an Address by id"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "addresses/#{id}" }
  end
end
