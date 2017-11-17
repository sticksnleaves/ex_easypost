defmodule ExEasyPost.Address do
  use ExEasyPost.Resource, import: [
    :create,
    :find
  ]

  @doc false
  def create_path, do: "addresses"

  @doc false
  def find_path(id), do: "addresses/#{id}"
end
