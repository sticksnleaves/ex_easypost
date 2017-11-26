defmodule ExEasyPost.CustomsInfoTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ customs_info: ^params }, path: "customs_infos" }
        = ExEasyPost.CustomsInfo.create(params)
    end
  end
end
