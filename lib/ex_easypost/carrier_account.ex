defmodule ExEasyPost.CarrierAccount do
  @moduledoc """
  """

  @doc "Create a CarrierAccount"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ carrier_account: params }, path: "carrier_accounts" }
  end

  @doc "Retrieve a CarrierAccount by id"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "carrier_accounts/#{id}" }
  end

  @doc "Retrieve a list of CarrierAccounts"
  @spec list() :: ExEasyPost.Operation.t
  def list() do
    %ExEasyPost.Operation{ http_method: :get, path: "carrier_accounts" }
  end

  @doc "Update a CarrierAccount"
  @spec update(binary, map) :: ExEasyPost.Operation.t
  def update(id, params) do
    %ExEasyPost.Operation{ http_method: :put, params: %{ carrier_account: params }, path: "carrier_accounts/#{id}" }
  end
end
