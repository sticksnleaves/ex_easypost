defmodule ExEasyPost.ConfigTest do
  use ExUnit.Case, async: true

  test "provides default config" do
    assert(
      ExEasyPost.Config.new()
      |> Map.keys
      |> Enum.count > 0
    )
  end

  test "pulls runtime config for {:system, env_key}" do
    key = "ExEasyPostConfigTest"
    value = "foo"

    System.put_env(key, value)

    assert(
      ExEasyPost.Config.new(api_key: {:system, key})
      |> Map.get(:api_key) == value
    )
  end

  test "uses config override" do
    value = "foo"

    assert(
      ExEasyPost.Config.new(api_key: value)
      |> Map.get(:api_key) == value
    )
  end
end
