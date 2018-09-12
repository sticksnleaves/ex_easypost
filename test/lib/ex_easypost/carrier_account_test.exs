defmodule ExEasyPost.CarrierAccountTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{
               http_method: :post,
               params: %{carrier_account: ^params},
               path: "carrier_accounts"
             } = ExEasyPost.CarrierAccount.create(params)
    end
  end

  describe "find/0" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "carrier_accounts/foo"} =
               ExEasyPost.CarrierAccount.find(id)
    end
  end

  describe "list/0" do
    test "builds an operation" do
      assert %ExEasyPost.Operation{http_method: :get, path: "carrier_accounts"} =
               ExEasyPost.CarrierAccount.list()
    end
  end

  describe "update/2" do
    test "builds an operation" do
      id = "foo"
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{
               http_method: :put,
               params: %{carrier_account: ^params},
               path: "carrier_accounts/foo"
             } = ExEasyPost.CarrierAccount.update(id, params)
    end
  end
end
