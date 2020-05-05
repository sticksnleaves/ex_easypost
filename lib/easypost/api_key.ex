defmodule EasyPost.APIKey do
  @doc """
  Retrieve an API key.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/api_keys/#{id}" }
  end
end
