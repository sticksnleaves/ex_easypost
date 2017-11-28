defmodule ExEasyPost.CustomsItemTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ customs_item: ^params }, path: "customs_items" }
        = ExEasyPost.CustomsItem.create(params)
    end
  end
end
