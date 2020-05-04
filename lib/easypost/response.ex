defmodule EasyPost.Response do
  @type t ::
          %__MODULE__{
            body: map | String.t(),
            headers: EasyPost.http_headers_t(),
            private: map,
            status_code: pos_integer
          }

  defstruct body: nil,
            headers: nil,
            private: %{},
            status_code: nil
end
