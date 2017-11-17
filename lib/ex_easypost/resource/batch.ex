defmodule ExEasyPost.Batch do
  use ExEasyPost.Resource, import: [
    :create
  ]

  @spec add_shipments(binary, [map]) :: ExEasyPost.Operation.t
  def add_shipments(id, shipments) do
    request(:post, "batches/#{id}/add_shipments", shipments)
  end

  @spec label(binary, map) :: ExEasyPost.Operation.t
  def label(id, params) do
    request(:post, "batches/#{id}/label", params)
  end

  @spec remove_shipments(binary, [map]) :: ExEasyPost.Operation.t
  def remove_shipments(id, shipments) do
    request(:post, "batches/#{id}/remove_shipments", shipments)
  end

  @spec scan_form(binary) :: ExEasyPost.Operation.t
  def scan_form(id) do
    request(:post, "batches/#{id}/scan_form")
  end

  @doc false
  def create_path, do: "batches"
end
