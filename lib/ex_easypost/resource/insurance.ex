defmodule ExEasyPost.Insurance do
  use ExEasyPost.Resource, import: [
    :create,
    :find,
    :list
  ]

  @doc false
  def create_path, do: "insurances"

  @doc false
  def find_path(id), do: "insurances/#{id}"

  @doc false
  def list_path, do: "insurances"
end
