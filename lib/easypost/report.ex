defmodule EasyPost.Report do
  @doc """
  Create a `Report`.
  """
  @spec create(String.t(), map) :: EasyPost.Operation.t()
  def create(type, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/reports/#{type}"
    }
  end

  @doc """
  Get a `Report`.
  """
  @spec get(String.t(), String.t()) :: EasyPost.Operation.t()
  def get(type, id) do
    %EasyPost.Operation{ method: :get, path: "/reports/#{type}/#{id}" }
  end

  @doc """
  Retrieve a list of `Report`'s.
  """
  @spec list(String.t(), map) :: EasyPost.Operation.t()
  def list(type, params \\ %{}) do
    %EasyPost.Operation{
      method: :get,
      params: params,
      path: "/reports/#{type}"
    }
  end
end
