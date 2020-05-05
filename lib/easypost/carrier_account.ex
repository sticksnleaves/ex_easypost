defmodule EasyPost.CarrierAccount do
  @doc """
  Create a `CarrierAccount`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/carrier_accounts"
    }
  end

  @doc """
  Delete a `CarrierAccount`.
  """
  @spec delete(String.t()) :: EasyPost.Operation.t()
  def delete(id) do
    %EasyPost.Operation{ method: :delete, path: "/carrier_accounts/#{id}" }
  end

  @doc """
  Retrieve a `CarrierAccount`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/carrier_accounts/#{id}" }
  end

  @doc """
  Retrieve a list of `CarrierAccount`'s.
  """
  @spec list :: EasyPost.Operation.t()
  def list do
    %EasyPost.Operation{ method: :get, path: "/carrier_accounts" }
  end

  @doc """
  Update a `CarrierAccount`.
  """
  @spec update(String.t(), map) :: EasyPost.Operation.t()
  def update(id, params) do
    %EasyPost.Operation{
      method: :put,
      params: params,
      path: "/carrier_accounts/#{id}"
    }
  end
end
