defmodule ExEasyPost.CustomsInfo do
  @moduledoc """
  """

  @doc "Create a CustomsInfo"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ customs_info: params }, path: "customs_infos" }
  end
end
