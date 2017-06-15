defmodule ExEasyPost.Insurance do
  use ExEasyPost.Resource, import: [
    :create,
    :find,
    :list
  ]

  @doc false
  def create_url, do: "insurances"

  @doc false
  def find_url(id), do: "insurances/#{id}"

  @doc false
  def list_url, do: "insurances"
end
