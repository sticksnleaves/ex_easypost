defmodule ExEasyPost.CustomsItem do
  @moduledoc """
  """

  @doc "Create a CustomsItem"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ customs_item: params }, path: "customs_items" }
  end
end
