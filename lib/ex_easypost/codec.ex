defmodule ExEasyPost.Codec do
  @moduledoc """
  Defines the specification for a JSON parser.

  ExEasyPost supports the use of your favorite JSON parser provided it fulfills
  this specification. Poison and Jason fulfill this spec without modification.
  """

  @callback encode!(%{}) :: String.t

  @callback decode!(String.t) :: %{}
end
