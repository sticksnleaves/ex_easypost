defmodule ExEasyPost.AddressTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ address: ^params }, path: "addresses" }
        = ExEasyPost.Address.create(params)
    end

    test "does not wrap `:verify` in `:address`" do
      params = %{ verify: "delivery" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ address: %{}, verify: "delivery" }, path: "addresses" }
        = ExEasyPost.Address.create(params)
    end

    test "does not wrap `:verify_strict` in `:address`" do
      params = %{ verify_strict: "delivery" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ address: %{}, verify_strict: "delivery" }, path: "addresses" }
        = ExEasyPost.Address.create(params)
    end
  end

  describe "find/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "addresses/foo"}
        = ExEasyPost.Address.find(id)
    end
  end
end
