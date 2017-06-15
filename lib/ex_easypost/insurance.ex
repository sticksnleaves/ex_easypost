defmodule ExEasyPost.Insurance do
  use ExEasyPost.Resource, import: [
    :create,
    :find,
    :list
  ]

  @doc false
  def create_url, do: "insurances"

  def find_url(id), do: "insurances/#{id}"

  def list_url, do: "insurances"
end
