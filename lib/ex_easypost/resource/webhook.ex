defmodule ExEasyPost.Webhook do
  use ExEasyPost.Resource, import: [
    :create,
    :delete,
    :find,
    :list,
    :update
  ]

  @doc false
  def create_path, do: "webhooks"

  @doc false
  def delete_path(id), do: "webhooks/#{id}"

  @doc false
  def find_path(id), do: "webhooks/#{id}"

  @doc false
  def list_path, do: "webhooks"

  @doc false
  def update_path(id), do: "webhooks/#{id}"
end
