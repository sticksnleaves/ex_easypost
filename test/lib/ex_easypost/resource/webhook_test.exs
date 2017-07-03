defmodule ExEasyPost.WebhookTest do
  use ExUnit.Case, async: true

  describe "create/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :post, params: ^params, path: "webhooks"}
        = ExEasyPost.Webhook.create(params)
    end
  end

  describe "delete/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :delete, path: "webhooks/foo"}
        = ExEasyPost.Webhook.delete(id)
    end
  end

  describe "find/1" do
    test "builds an operation" do
      id = "foo"

      assert %ExEasyPost.Operation{http_method: :get, path: "webhooks/foo"}
        = ExEasyPost.Webhook.find(id)
    end
  end

  describe "list/1" do
    test "builds an operation" do
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :get, params: ^params, path: "webhooks"}
        = ExEasyPost.Webhook.list(params)
    end
  end

  describe "update/2" do
    test "builds an operation" do
      id = "foo"
      params = %{foo: "bar"}

      assert %ExEasyPost.Operation{http_method: :put, params: ^params, path: "webhooks/foo"}
        = ExEasyPost.Webhook.update(id, params)
    end
  end
end
