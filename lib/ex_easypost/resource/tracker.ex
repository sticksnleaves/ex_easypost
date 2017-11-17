defmodule ExEasyPost.Tracker do
  use ExEasyPost.Resource, import: [
    :create,
    :find,
    :list
  ]

  @doc false
  def create_path, do: "trackers"

  @doc false
  def find_path(id), do: "trackers/#{id}"

  @doc false
  def list_path, do: "trackers"
end
