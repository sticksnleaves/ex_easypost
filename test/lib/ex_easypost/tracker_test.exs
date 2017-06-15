defmodule ExEasyPost.TrackerTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "trackers"}
        = ExEasyPost.Tracker.create(params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "trackers/foo"}
        = ExEasyPost.Tracker.find(id)
    end
  end

  describe "list/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :get, params: ^params, path: "trackers"}
        = ExEasyPost.Tracker.list(params)
    end
  end
end
