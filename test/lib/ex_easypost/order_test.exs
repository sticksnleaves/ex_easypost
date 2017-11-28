defmodule ExEasyPost.OrderTest do
  use ExUnit.Case, async: true

  describe "buy/2" do
    test "builds an operation" do
      id = "foo"
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: ^params, path: "orders/foo/buy" }
        = ExEasyPost.Order.buy(id, params)
    end
  end

  describe "create/1" do
    test "builds an operation" do
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ order: ^params }, path: "orders" }
        = ExEasyPost.Order.create(params)
    end
  end

  describe "find/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{ http_method: :get, path: "orders/foo" }
        = ExEasyPost.Order.find(id)
    end
  end
end
