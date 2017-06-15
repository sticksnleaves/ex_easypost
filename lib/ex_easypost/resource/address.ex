defmodule ExEasyPost.Address do
  use ExEasyPost.Resource, import: [
    :create,
    :find
  ]

  @doc false
  def create_url, do: "addresses"

  @doc false
  def find_url(id), do: "addresses/#{id}"
end
