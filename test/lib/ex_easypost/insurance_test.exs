defmodule ExEasyPost.InsuranceTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "insurances"}
        = ExEasyPost.Insurance.create(params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      insurance_id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "insurances/foo"}
        = ExEasyPost.Insurance.find(insurance_id)
    end
  end

  describe "list/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "insurances"}
        = ExEasyPost.Insurance.create(params)
    end
  end
end
