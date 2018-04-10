defmodule ExEasyPost.Config do
  @moduledoc false

  @config [
    :api_key, :host, :http_client, :http_opts, :json_codec, :path, :port,
    :protocol
  ]

  @defaults %{
    api_key: nil,
    host: "api.easypost.com",
    http_client: ExEasyPost.Client.HTTPoison,
    http_opts: [],
    json_codec: Poison,
    path: "v2",
    port: nil,
    protocol: "https"
  }

  @doc """
  Builds the config for an operation.

  Config values are applied in this order:

  1) Defaults
  2) Application config
  3) Overrides
  """
  def new(overrides \\ []) do
    config = all_config(overrides)

    Enum.reduce(config, config, fn
      {k, v}, acc ->
        Map.put(acc, k, runtime_value(v))
    end)
  end

  # private

  defp all_config(config) do
    @defaults
    |> Map.merge(app_config())
    |> Map.merge(Map.new(config))
  end

  defp app_config do
    Application.get_all_env(:ex_easypost)
    |> Map.new
    |> Map.take(@config)
  end

  defp runtime_value({:system, key}), do: System.get_env(key)
  defp runtime_value(value), do: value
end
