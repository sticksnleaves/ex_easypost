defmodule EasyPost.Shipment do
  @doc """
  Buy a `Shipment`.
  """
  @spec buy(String.t(), map) :: EasyPost.Operation.t()
  def buy(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/shipments/#{id}/buy"
    }
  end

  @doc """
  Convert the label format of a `Shipment`.
  """
  @spec convert_label_format(String.t(), map) :: EasyPost.Operation.t()
  def convert_label_format(id, params) do
    %EasyPost.Operation{
      method: :get,
      params: params,
      path: "/shipments/#{id}"
    }
  end

  @doc """
  Create a `Shipment`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/shipments" }
  end

  @doc """
  Retrieve a `Shipment`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/shipments/#{id}" }
  end

  @doc """
  Insure a `Shipment`.
  """
  @spec insure(String.t(), map) :: EasyPost.Operation.t()
  def insure(id, params) do
    %EasyPost.Operation{
      method: :post,
      params: params,
      path: "/shipments/#{id}/insure"
    }
  end

  @doc """
  Retrieve a list of `Shipment`'s.
  """
  @spec list(map) :: EasyPost.Operation.t()
  def list(params \\ %{}) do
    %EasyPost.Operation{ method: :get, params: params, path: "/shipments" }
  end

  @doc """
  Regenerate rates for a `Shipment`.
  """
  @spec rates(String.t()) :: EasyPost.Operation.t()
  def rates(id) do
    %EasyPost.Operation{ method: :get, path: "/shipments/#{id}/rates" }
  end

  @doc """
  Refund a `Shipment`.
  """
  @spec refund(String.t()) :: EasyPost.Operation.t()
  def refund(id) do
    %EasyPost.Operation{ method: :post, path: "/shipments/#{id}/refund" }
  end
end
