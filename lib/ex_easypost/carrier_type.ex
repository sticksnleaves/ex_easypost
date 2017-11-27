defmodule ExEasyPost.CarrierType do
  @moduledoc """
  """

  def list() do
    %ExEasyPost.Operation{ http_method: :get, path: "carrier_types" }
  end
end
