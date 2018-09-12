defmodule ExEasyPost.InsuranceTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{
               http_method: :post,
               params: %{insurance: ^params},
               path: "insurances"
             } = ExEasyPost.Insurance.create(params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "insurances/foo"} =
               ExEasyPost.Insurance.find(id)
    end
  end

  describe "list/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :get, params: ^params, path: "insurances"} =
               ExEasyPost.Insurance.list(params)
    end
  end
end
