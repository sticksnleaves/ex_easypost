defmodule ExEasyPost.ParcelTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "parcels"}
        = ExEasyPost.Parcel.create(params)
    end
  end

  describe "find/2" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "parcels/foo"}
        = ExEasyPost.Parcel.find(id)
    end
  end
end
