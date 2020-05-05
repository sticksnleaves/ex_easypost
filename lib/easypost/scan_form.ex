defmodule EasyPost.ScanForm do
  @doc """
  Create a `ScanForm`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/scan_forms" }
  end

  @doc """
  Retrieve a `ScanForm`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/scan_forms/#{id}" }
  end

  @doc """
  Retrieve a list of `ScanForm`'s.
  """
  @spec list(map) :: EasyPost.Operation.t()
  def list(params \\ %{}) do
    %EasyPost.Operation{ method: :get, params: params, path: "/scan_forms" }
  end
end
