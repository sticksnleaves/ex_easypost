defmodule ExEasyPost.Shipment do
  use ExEasyPost.Resource, import: [
    :create,
    :find,
    :list
  ]

  @spec buy(binary) :: ExEasyPost.Operation.t
  def buy(id) do
    operation(:post, "shipments/#{id}/buy")
  end

  @spec insure(binary, number) :: ExEasypost.Operation.t
  def insure(id, amount) do
    operation(:post, "shipments/#{id}/insure", %{amount: amount})
  end

  @spec label(binary) :: ExEasyPost.Operation.t
  def label(id) do
    operation(:get, "shipments/#{id}/label")
  end

  @spec rates(binary) :: ExEasyPost.Operation.t
  def rates(id) do
    operation(:get, "shipments/#{id}/rates")
  end

  @spec refund(binary) :: ExEasyPost.Operation.t
  def refund(id) do
    operation(:post, "shipments/#{id}/refund")
  end

  @doc false
  def create_path, do: "shipments"

  @doc false
  def find_path(id), do: "shipments/#{id}"

  @doc false
  def list_path, do: "shipments"
end
