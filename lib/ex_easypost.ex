defmodule ExEasyPost do

  @doc """
  Performs an API request.
  """
  @spec request(ExEasyPost.Operation.t, []) :: {:ok, term} | {:error, term}
  def request(operation, config \\ []) do
    ExEasyPost.Operation.perform(operation, ExEasyPost.Config.new(config))
  end
end
