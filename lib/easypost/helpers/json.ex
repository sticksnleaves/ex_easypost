defmodule EasyPost.Helpers.JSON do
  @spec decode(String.t(), EasyPost.Config.t()) :: any
  def decode(json, config) do
    case config.json_codec.decode(json) do
      { :ok, result } ->
        result
      { :error, _reason } ->
        json
    end
  end
end
