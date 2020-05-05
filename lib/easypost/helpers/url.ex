defmodule EasyPost.Helpers.URL do
  @spec to_string(EasyPost.Operation.t(), EasyPost.Config.t()) :: String.t()
  def to_string(operation, config) do
    %URI{}
    |> Map.put(:host, config.host)
    |> Map.put(:path, "#{config.path}#{operation.path}")
    |> Map.put(:port, config.port)
    |> Map.put(:scheme, config.protocol)
    |> put_query(operation)
    |> URI.to_string()
  end

  defp put_query(uri, %{ method: :get } = operation) do
    Map.put(uri, :query, URI.encode_query(operation.params))
  end

  defp put_query(uri, _operation) do
    uri
  end
end
