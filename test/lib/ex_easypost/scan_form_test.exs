defmodule ExEasyPost.ScanFormTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = [%{foo: "bar"}]

      assert %ExEasyPost.Operation{
               http_method: :post,
               params: %{shipments: ^params},
               path: "scan_forms"
             } = ExEasyPost.ScanForm.create(params)
    end
  end

  describe "find/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "scan_forms/foo"} =
               ExEasyPost.ScanForm.find(id)
    end
  end

  describe "list/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :get, params: ^params, path: "scan_forms"} =
               ExEasyPost.ScanForm.list(params)
    end
  end
end
