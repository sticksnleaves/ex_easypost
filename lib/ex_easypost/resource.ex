defmodule ExEasyPost.Resource do
  @moduledoc false

  defmacro __using__(options) do
    import_functions = options[:import] || []

    quote bind_quoted: [import_functions: import_functions] do
      if :create in import_functions do
        @spec create(map) :: ExEasyPost.Operation.t
        def create(params) do
          request(:post, create_url(), params)
        end
      end

      if :find in import_functions do
        @spec find(binary, map) :: ExEasyPost.Operation.t
        def find(id, params \\ %{}) do
          request(:get, find_url(id), params)
        end
      end

      if :list in import_functions do
        @spec list(map) :: ExEasyPost.Operation.t
        def list(params \\ %{}) do
          request(:get, list_url(), params)
        end
      end

      defp request(http_method, path, params \\ %{}) do
        ExEasyPost.Operation.new(%{
          http_method: http_method,
          params: params,
          path: path
        })
      end
    end
  end
end
