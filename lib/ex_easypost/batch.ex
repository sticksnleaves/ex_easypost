defmodule ExEasyPost.Batch do
  @moduledoc """
  """

  @doc "Add Shipments to a Batch"
  @spec add_shipments(binary, list) :: ExEasyPost.Operation.t
  def add_shipments(id, params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ batch: %{ shipments: params } }, path: "batches/#{id}/add_shipments" }
  end

  @doc "Create a Batch"
  @spec create(list) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ batch: %{ shipments: params } }, path: "batches" }
  end

  @doc "Convert Shipment label formats for a Batch"
  @spec label(binary, map) :: ExEasyPost.Operation.t
  def label(id, params) do
    %ExEasyPost.Operation{ http_method: :post, params: params, path: "batches/#{id}/label" }
  end

  @doc "Remove Shipments from a Batch"
  @spec remove_shipments(binary, list) :: ExEasyPost.Operation.t
  def remove_shipments(id, params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ batch: %{ shipments: params } }, path: "batches/#{id}/remove_shipments" }
  end

  @doc "Generate a manifest for a Batch"
  @spec scan_form(binary) :: ExEasyPost.Operation.t
  def scan_form(id) do
    %ExEasyPost.Operation{ http_method: :post, path: "batches/#{id}/scan_form" }
  end
end
