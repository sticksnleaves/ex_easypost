defmodule EasyPost.Parcel do
  @doc """
  Create a `Parcel`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/parcels" }
  end

  @doc """
  Retrieve a `Parcel`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/parcels/#{id}" }
  end
end
