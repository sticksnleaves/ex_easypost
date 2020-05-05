defmodule EasyPost.Insurance do
  @doc """
  Create a `Insurance`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/insurances" }
  end

  @doc """
  Retrieve an `Insurance`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/insurances/#{id}" }
  end

  @doc """
  Retrieve a list of `Insurance`'s.
  """
  @spec list(map) :: EasyPost.Operation.t()
  def list(params \\ %{}) do
    %EasyPost.Operation{ method: :get, params: params, path: "/insurances" }
  end
end
