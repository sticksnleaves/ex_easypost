defmodule ExEasyPost.UserTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ user: ^params }, path: "users" }
        = ExEasyPost.User.create(params)
    end
  end

  describe "find/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{ http_method: :get, path: "users/foo" }
        = ExEasyPost.User.find(id)
    end
  end

  describe "update/2" do
    test "builds an operation" do
      id = "foo"
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :put, params: %{ user: ^params }, path: "users/foo" }
        = ExEasyPost.User.update(id, params)
    end
  end
end
