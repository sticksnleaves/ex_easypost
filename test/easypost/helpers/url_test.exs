defmodule EasyPost.Helpers.URLTest do
  use ExUnit.Case, async: true

  alias EasyPost.{ Config, Helpers, Operation }

  test "to_string/2" do
    operation = %Operation{ method: :post, path: "/hi", params: %{ good: "morning" } }

    assert "https://api.easypost.com/v2/hi" == Helpers.URL.to_string(operation, Config.new())

    operation = %Operation{ method: :get, path: "/hi", params: %{ good: "morning" } }

    assert "https://api.easypost.com/v2/hi?good=morning" == Helpers.URL.to_string(operation, Config.new())
  end
end
