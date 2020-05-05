defmodule EasyPost.Operation do
  @type t ::
          %__MODULE__{
            method: EasyPost.http_method_t(),
            params: nil | map,
            path: String.t()
          }

  defstruct [:method, :params, :path]
end
