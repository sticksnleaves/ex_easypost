defmodule ExEasyPost.Webhook do
  @moduledoc """
  """

  @doc "Create a Webhook"
  @spec create(map) :: ExEasyPost.Operation.t()
  def create(params) do
    %ExEasyPost.Operation{http_method: :post, params: %{webhook: params}, path: "webhooks"}
  end

  @doc "Delete a Webhook"
  @spec delete(binary) :: ExEasyPost.Operation.t()
  def delete(id) do
    %ExEasyPost.Operation{http_method: :delete, path: "webhooks/#{id}"}
  end

  @doc "Retrieve a Webhook by id"
  @spec find(binary) :: ExEasyPost.Operation.t()
  def find(id) do
    %ExEasyPost.Operation{http_method: :get, path: "webhooks/#{id}"}
  end

  @doc "Retrieve a list of Webhooks"
  @spec list() :: ExEasyPost.Operation.t()
  def list() do
    %ExEasyPost.Operation{http_method: :get, path: "webhooks"}
  end

  @doc "Enable a Webhook that has been disabled"
  @spec update(binary) :: ExEasyPost.Operation.t()
  def update(id) do
    %ExEasyPost.Operation{http_method: :put, path: "webhooks/#{id}"}
  end
end
