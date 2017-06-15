defmodule ExEasyPost.Tracker do
  use ExEasyPost.Resource, import: [
    :create,
    :find,
    :list
  ]

  @doc false
  def create_url, do: "trackers"

  @doc false
  def find_url(id), do: "trackers/#{id}"

  @doc false
  def list_url, do: "trackers"
end
