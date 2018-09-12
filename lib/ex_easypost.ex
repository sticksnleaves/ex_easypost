defmodule ExEasyPost do
  @moduledoc File.read!("#{__DIR__}/../README.md")

  @doc """
  Perform a request against the EasyPost API.

  Build an operation from an EasyPost resource, and then pass it to this
  function to execute it.

  If you want to build an operation manually, see: `ExEasyPost.Operation`

  This functions takes an optional second parameter of configuration overrides.
  This is useful if you want to have certain configuration changed on a per
  request basis.
  """
  @spec request(ExEasyPost.Operation.t(), Keyword.t()) :: {:ok, term} | {:error, term}
  def request(operation, overrides \\ []) do
    ExEasyPost.Operation.perform(operation, ExEasyPost.Config.new(overrides))
  end
end
