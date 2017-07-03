defmodule ExEasyPost.Webhook do
  use ExEasyPost.Resource, import: [
    :create,
    :delete,
    :find,
    :list,
    :update
  ]

  @doc false
  def create_url, do: "webhooks"

  @doc false
  def delete_url(id), do: "webhooks/#{id}"

  @doc false
  def find_url(id), do: "webhooks/#{id}"

  @doc false
  def list_url, do: "webhooks"

  @doc false
  def update_url(id), do: "webhooks/#{id}"
end
