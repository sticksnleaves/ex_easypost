defmodule ExEasyPost.AddressTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "addresses"}
        = ExEasyPost.Address.create(params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "addresses/foo"}
        = ExEasyPost.Address.find(id)
    end
  end
end
