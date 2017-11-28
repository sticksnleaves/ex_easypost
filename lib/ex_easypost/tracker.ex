defmodule ExEasyPost.Tracker do
  @moduledoc """
  """

  @doc "Create a Tracker"
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    %ExEasyPost.Operation{ http_method: :post, params: %{ tracker: params }, path: "trackers" }
  end

  @doc "Find a Tracker by id"
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "trackers/#{id}" }
  end

  @doc "Retrieve a list of Trackers"
  @spec list(map) :: ExEasyPost.Operation.t
  def list(params) do
    %ExEasyPost.Operation{ http_method: :get, params: params, path: "trackers" }
  end
end
