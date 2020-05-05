defmodule EasyPost.Webhook do
  @doc """
  Create a `Webhook`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/webhooks" }
  end

  @doc """
  Delete a `Webhook`.
  """
  @spec delete(String.t()) :: EasyPost.Operation.t()
  def delete(id) do
    %EasyPost.Operation{ method: :delete, path: "/webhooks/#{id}" }
  end

  @doc """
  Retrieve a `Webhook`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/webhooks/#{id}" }
  end

  @doc """
  Retrieve a list of `Webhook`'s.
  """
  @spec list :: EasyPost.Operation.t()
  def list do
    %EasyPost.Operation{ method: :get, path: "/webhooks" }
  end

  @doc """
  Update a `Webhook`.
  """
  @spec update(String.t(), map) :: EasyPost.Operation.t()
  def update(id, params) do
    %EasyPost.Operation{ method: :put, params: params, path: "/webhooks/#{id}" }
  end
end
