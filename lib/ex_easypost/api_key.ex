defmodule ExEasyPost.APIKey do
  @moduledoc """
  """

  @doc "Retrieve a list of API keys"
  @spec list() :: ExEasyPost.Operation.t
  def list() do
    %ExEasyPost.Operation{ http_method: :get, path: "api_keys" }
  end
end
