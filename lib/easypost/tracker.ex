defmodule EasyPost.Tracker do
  @doc """
  Create a `Tracker`.
  """
  @spec create(map) :: EasyPost.Operation.t()
  def create(params) do
    %EasyPost.Operation{ method: :post, params: params, path: "/trackers" }
  end

  @doc """
  Retrieve a `Tracker`.
  """
  @spec get(String.t()) :: EasyPost.Operation.t()
  def get(id) do
    %EasyPost.Operation{ method: :get, path: "/trackers/#{id}" }
  end

  @doc """
  Retrieve a list of `Tracker`'s.
  """
  @spec list(map) :: EasyPost.Operation.t()
  def list(params \\ %{}) do
    %EasyPost.Operation{ method: :get, params: params, path: "/trackers" }
  end
end
