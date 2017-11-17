defmodule ExEasyPost.Parcel do
  use ExEasyPost.Resource, import: [
    :create,
    :find
  ]

  @doc false
  def create_path, do: "parcels"

  @doc false
  def find_path(id), do: "parcels/#{id}"
end
