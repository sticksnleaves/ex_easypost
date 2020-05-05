defmodule EasyPost.ResponseTest do
  use ExUnit.Case, async: true

  alias EasyPost.{ Config, Response }

  test "new/2" do
    body = "{ \"ok\": true }"

    headers = [{ "some-header", "some-header-value" }]

    status_code = 200

    expected = %Response{}
    expected = Map.put(expected, :body, %{ "ok" => true })
    expected = Map.put(expected, :headers, headers)
    expected = Map.put(expected, :status_code, status_code)

    assert ^expected = EasyPost.Response.new(%{ body: body, headers: headers, status_code: status_code }, Config.new())
  end
end
