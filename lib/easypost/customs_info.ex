defmodule EasyPost.CustomsInfo do
  @doc """
  Create a `CustomsInfo`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/customs_infos" }
  end
end
