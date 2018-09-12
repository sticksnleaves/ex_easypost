defmodule ExEasyPost.APIKeyTest do
  use ExUnit.Case, async: true

  describe "list/0" do
    test "builds an operation" do
      assert %ExEasyPost.Operation{http_method: :get, path: "api_keys"} = ExEasyPost.APIKey.list()
    end
  end
end
