defmodule ExEasyPost.Report do
  @moduledoc """
  """

  @doc "Create a Report"
  @spec create(binary, map) :: ExEasyPost.Operation.t
  def create(type, params) do
    %ExEasyPost.Operation{ http_method: :post, params: params, path: "reports/#{type}" }
  end

  @doc "Retrieve a Report by type and id"
  @spec find(binary, binary) :: ExEasyPost.Operation.t
  def find(type, id) do
    %ExEasyPost.Operation{ http_method: :get, path: "reports/#{type}/#{id}" }
  end

  @doc "Retrieve a list of Reports by type"
  @spec list(binary, map) :: ExEasyPost.Operation.t
  def list(type, params \\ %{}) do
    %ExEasyPost.Operation{ http_method: :get, params: params, path: "reports/#{type}" }
  end
end
