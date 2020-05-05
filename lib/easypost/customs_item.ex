defmodule EasyPost.CustomsItem do
  @doc """
  Create a `Customsitem`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/customs_items" }
  end
end
