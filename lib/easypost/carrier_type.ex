defmodule EasyPost.CarrierType do
  @doc """
  Retrieve a list of `CarrierType`'s.
  """
  @spec list :: EasyPost.Operation.t()
  def list do
    %EasyPost.Operation{ method: :get, path: "/carrier_types" }
  end
end
