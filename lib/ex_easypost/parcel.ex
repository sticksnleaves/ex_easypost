defmodule ExEasyPost.Parcel do
  @moduledoc """
  """

  @doc "Create a Parcel"
  @spec create(map) :: ExEasyPost.Operation.t()
  def create(params) do
    %ExEasyPost.Operation{http_method: :post, params: %{parcel: params}, path: "parcels"}
  end

  @doc "Find a Parcel by id"
  @spec find(binary) :: ExEasyPost.Operation.t()
  def find(id) do
    %ExEasyPost.Operation{http_method: :get, path: "parcels/#{id}"}
  end
end
