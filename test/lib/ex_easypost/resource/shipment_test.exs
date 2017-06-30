defmodule ExEasyPost.ShipmentTest do
  use ExUnit.Case, async: true

  describe "buy/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :post, path: "shipments/foo/buy"}
        = ExEasyPost.Shipment.buy(id)
    end
  end

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "shipments"}
        = ExEasyPost.Shipment.create(params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "shipments/foo"}
        = ExEasyPost.Shipment.find(id)
    end
  end

  describe "insure/2" do
    test "builds an operation" do
      id = "foo"
      amount = 3.14

      assert %ExEasyPost.Operation{http_method: :post, params: %{amount: ^amount}, path: "shipments/foo/insure"}
        = ExEasyPost.Shipment.insure(id, amount)
    end
  end

  describe "label/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "shipments/foo/label"}
        = ExEasyPost.Shipment.label(id)
    end
  end

  describe "list/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :get, params: ^params, path: "shipments"}
        = ExEasyPost.Shipment.list(params)
    end
  end

  describe "rates/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "shipments/foo/rates"}
        = ExEasyPost.Shipment.rates(id)
    end
  end

  describe "refund/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :post, path: "shipments/foo/refund"}
        = ExEasyPost.Shipment.refund(id)
    end
  end
end
