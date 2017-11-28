defmodule ExEasyPost.Pickup do
  @moduledoc """
  """

  @doc "Buy a Pickup"
  @spec buy(binary, map) :: ExEasyPost.Operation.t
  def buy(id, params) do
    %ExEasyPost.Operation{ http_method: :post, params: params, path: "pickups/#{id}/buy" }
  end

  @doc "Cancel a Pickup"
  @spec cancel(binary) :: ExEasyPost.Operation.t
  def cancel(id) do
    %ExEasyPost.Operation{ http_method: :post, path: "pickups/#{id}/cancel" }
  end

  @doc "Create a Pickup"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ pickup: params }, path: "pickups" }
  end

  @doc "Retrieve a Pickup"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "pickups/#{id}" }
  end
end
