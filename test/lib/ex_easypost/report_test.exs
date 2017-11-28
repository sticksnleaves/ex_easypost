defmodule ExEasyPost.ReportTest do
  use ExUnit.Case, async: true

  describe "create/2" do
    test "builds an operation" do
      type = "foo"
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :post, params: ^params, path: "reports/foo" }
        = ExEasyPost.Report.create(type, params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      type = "foo"
      id = "bar"

      assert %ExEasyPost.Operation{ http_method: :get, path: "reports/foo/bar" }
        = ExEasyPost.Report.find(type, id)
    end
  end

  describe "list/2" do
    test "builds an operation" do
      type = "foo"
      params = %{ foo: "bar" }

      assert %ExEasyPost.Operation{ http_method: :get, params: ^params, path: "reports/foo" }
        = ExEasyPost.Report.list(type, params)
    end
  end
end
