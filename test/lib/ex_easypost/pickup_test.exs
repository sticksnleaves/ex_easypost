defmodule ExEasyPost.PickupTest do
  use ExUnit.Case, async: true

  describe "buy/2" do
    test "builds an operation" do
      id = "foo"
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "pickups/foo/buy"} =
               ExEasyPost.Pickup.buy(id, params)
    end
  end

  describe "cancel/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :post, path: "pickups/foo/cancel"} =
               ExEasyPost.Pickup.cancel(id)
    end
  end

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{
               http_method: :post,
               params: %{pickup: ^params},
               path: "pickups"
             } = ExEasyPost.Pickup.create(params)
    end
  end

  describe "find/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "pickups/foo"} =
               ExEasyPost.Pickup.find(id)
    end
  end
end
