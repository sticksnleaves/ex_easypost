defmodule ExEasyPost.CarrierTypeTest do
  use ExUnit.Case, async: true

  describe "list/0" do
    test "builds an operation" do
      assert %ExEasyPost.Operation{http_method: :get, path: "carrier_types"} =
               ExEasyPost.CarrierType.list()
    end
  end
end
