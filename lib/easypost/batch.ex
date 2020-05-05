defmodule EasyPost.Batch do
  @doc """
  Add shipments to a `Batch`.
  """
  @spec add_shipments(String.t(), map) :: EasyPost.Operation.t()
  def add_shipments(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/batches/#{id}/add_shipments"
    }
  end

  @doc """
  Create a `Batch`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/batches" }
  end

  @doc """
  Generate a label for a `Batch`.
  """
  @spec label(String.t(), map) :: EasyPost.Operation.t()
  def label(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/batches/#{id}/label"
    }
  end

  @doc """
  Remove shipments from a `Batch`.
  """
  @spec remove_shipments(String.t(), map) :: EasyPost.Operation.t()
  def remove_shipments(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/batches/#{id}/remove_shipments"
    }
  end

  @doc """
  Generate a manifest for a `Batch`.
  """
  @spec scan_form(String.t()) :: EasyPost.Operation.t()
  def scan_form(id) do
    %EasyPost.Operation{ method: :post, path: "/batches/#{id}/scan_form" }
  end
end
