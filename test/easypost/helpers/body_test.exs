defmodule EasyPost.Helpers.BodyTest do
  use ExUnit.Case, async: true

  alias EasyPost.{ Config, Helpers, Operation }

  test "encode!/2" do
    assert "" == Helpers.Body.encode!(%Operation{ method: :get, params: %{ ok: true } }, Config.new())

    assert "{\"ok\":true}" == Helpers.Body.encode!(%Operation{ method: :post, params: %{ ok: true } }, Config.new())
  end
end
