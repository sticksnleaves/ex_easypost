defmodule ExEasyPost.BatchTest do
  use ExUnit.Case, async: true

  describe "add_shipments/2" do
    test "builds an operation" do
      id = "foo"
      params = [%{ foo: "bar" }]

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ batch: %{ shipments: ^params } }, path: "batches/foo/add_shipments" }
        = ExEasyPost.Batch.add_shipments(id, params)
    end
  end

  describe "create/1" do
    test "builds an operation" do
      params = [%{ foo: "bar" }]

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ batch: %{ shipments: ^params } }, path: "batches" }
        = ExEasyPost.Batch.create(params)
    end
  end

  describe "label/2" do
    test "builds an operation" do
      id = "foo"
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: ^params, path: "batches/foo/label" }
        = ExEasyPost.Batch.label(id, params)
    end
  end

  describe "remove_shipments/2" do
    test "builds an operation" do
      id = "foo"
      params = [%{ foo: "bar" }]

      assert %ExEasyPost.Operation{ http_method: :post, params: %{ batch: %{ shipments: ^params } }, path: "batches/foo/remove_shipments" }
        = ExEasyPost.Batch.remove_shipments(id, params)
    end
  end

  describe "scan_form/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{ http_method: :post, path: "batches/foo/scan_form" }
        = ExEasyPost.Batch.scan_form(id)
    end
  end
end
