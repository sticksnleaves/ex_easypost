defmodule EasyPost.Helpers.Body do
  @spec encode!(EasyPost.Operation.t(), EasyPost.Config.t()) :: String.t() | no_return
  def encode!(%{ method: :get }, _config) do
    ""
  end

  def encode!(operation, config) do
    config.json_codec.encode!(operation.params)
  end
end
