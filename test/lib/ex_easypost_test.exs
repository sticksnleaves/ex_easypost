defmodule ExEasyPostTest do
  use ExUnit.Case, async: true

  @operation %ExEasyPost.Operation{http_method: :get, path: "foo"}

  setup do
    bypass = Bypass.open(port: 5555)

    %{bypass: bypass}
  end

  test "returns :ok when request is successful", %{bypass: bypass} do
    Bypass.expect(bypass, fn(conn) ->
      Plug.Conn.resp(conn, 200, ~s<{}>)
    end)

    assert {:ok, _response} = @operation |> ExEasyPost.request
  end

  test "returns :error when request is not successful", %{bypass: bypass} do
    Bypass.expect(bypass, fn(conn) ->
      Plug.Conn.resp(conn, 400, ~s<{}>)
    end)

    assert {:error, {:http_error, 400, _reason}} =
      @operation |> ExEasyPost.request
  end
end
