defmodule ExEasyPost.ScanForm do
  @moduledoc """
  """

  @doc "Create a ScanForm"
  @spec create(list) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ shipments: params }, path: "scan_forms" }
  end

  @doc "Retrieve a ScanForm by id"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "scan_forms/#{id}" }
  end

  @doc "Retrieve a list of ScanForms"
  @spec list(map) :: ExEasyPost.Operation.t
  def list(params) do
    %ExEasyPost.Operation{ http_method: :get, params: params, path: "scan_forms" }
  end
end
