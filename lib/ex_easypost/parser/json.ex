defmodule ExEasyPost.Parser.JSON do
  @moduledoc """
  Defines the specification for a JSON parser.

  ExEasyPost supports the use of your favorite JSON parser provided it fulfills
  this specification. Poison fulfills this spec without modification, and is the
  default.
  """

  @callback encode!(%{}) :: String.t
  @callback encode(%{}) :: {:ok, String.t} | {:error, String.t}

  @callback decode!(String.t) :: %{}
  @callback decode(String.t) :: {:ok, %{}} | {:error, %{}}
end
