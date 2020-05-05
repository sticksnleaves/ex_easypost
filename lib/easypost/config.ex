defmodule EasyPost.Config do
  @type t ::
          %__MODULE__{
            api_key: String.t(),
            host: String.t(),
            http_client: module,
            http_client_opts: any,
            json_codec: module,
            path: String.t(),
            port: pos_integer,
            protocol: String.t(),
            retry: boolean,
            retry_opts: Keyword.t()
          }

  defstruct api_key: nil,
            host: "api.easypost.com",
            http_client: EasyPost.HTTP.Hackney,
            http_client_opts: [],
            json_codec: Jason,
            path: "/v2",
            port: nil,
            protocol: "https",
            retry: false,
            retry_opts: []

  @spec new(map) :: t
  def new(config \\ %{}) do
    struct(%__MODULE__{}, config)
  end
end
