defmodule ExEasyPost.Parcel do
  use ExEasyPost.Resource, import: [
    :create,
    :find
  ]

  @doc false
  def create_url, do: "parcels"

  @doc false
  def find_url(id), do: "parcels/#{id}"
end
