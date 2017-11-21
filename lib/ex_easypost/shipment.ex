defmodule ExEasyPost.Shipment do
  @moduledoc """
  """

  @doc "Buy a Shipment"
  @spec buy(binary, map) :: ExEasyPost.Operation.t
  def buy(id, params) do
    %ExEasyPost.Operation{ http_method: :post, params: params, path: "shipments/#{id}/buy" }
  end

  @doc "Create a Shipment"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ shipment: params }, path: "shipments" }
  end

  @doc "Find a Shipment by id"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "shipments/#{id}" }
  end

  @doc "Insure a Shipment"
  @spec insure(binary, map) :: ExEasyPost.Operation.t
  def insure(id, params) do
    %ExEasyPost.Operation{ http_method: :post, params: params, path: "shipments/#{id}/insure" }
  end

  @doc "Convert the label format of a Shipment"
  @spec label(binary, map) :: ExEasyPost.Operation.t
  def label(id, params) do
    %ExEasyPost.Operation{ http_method: :get, params: params, path: "shipments/#{id}/label" }
  end

  @doc "Retrieve a list of Shipments"
  @spec list(map) :: ExEasyPost.Operation.t
  def list(params \\ %{}) do
    %ExEasyPost.Operation{ http_method: :get, params: params, path: "shipments" }
  end

  @doc "Regenerate Rates for a Shipment"
  @spec rates(binary) :: ExEasyPost.Operation.t
  def rates(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "shipments/#{id}/rates" }
  end

  @doc "Refund a Shipment"
  @spec refund(binary) :: ExEasyPost.Operation.t
  def refund(id) do
    %ExEasyPost.Operation{ http_method: :post, path: "shipments/#{id}/refund" }
  end
end
