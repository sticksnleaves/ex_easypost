# EasyPost for Elixir

## Installation

`ex_easypost` is publbished on [Hex](https://hex.pm/packages/ex_easypost). Add
it to your list of dependencies in `mix.exs`:

```elixir
defp deps do
  [
    { :ex_easypost, "~> 3.0" }
  ]
end
```

`ex_easypost` requires you to provide an HTTP client and a JSON codec. `hackney`
and `jason` are used by default. If you wish to use these defaults you will need
add `hackney` and `jason` as dependencies as well.

## Usage

You can send a request to the EasyPost API by building an `EasyPost.Operation`
struct and passing it as the first argument to `EasyPost.request/2` and passing
a configuration map as the second argument.

### Example

```elixir
iex> params
...> EasyPost.Shipment.create()
...> EasyPost.request(%{ api_key: "xxx" })
{ :ok, %EasyPost.Response{} }
```

An `EasyPost.Operation` struct can be built using either a resource module
(e.g. `EasyPost.Shipment`) or by building the struct manually.
`EasyPost.Operation` contains fields `:method`, `:params` and `:path`.

* `:method` - an HTTP method and can be one of `:delete`, `:get`, `:post` or
  `:put`
* `:params` - data to be sent as the body of the request
* `:path` - the path to send the request to. Must begin with a forward slash.

## Configuration

* `:api_key` - API key used when making authenticated requests
* `:host` - HTTP host to make requests to. Defaults to `api.easypost.com`.
* `:http_client` -  the HTTP client used for making requests. Defaults to
  `EasyPost.HTTP.Hackney`.
* `:http_client_opts` - additional options passed to `:http_client`. Defaults to
  `[]`.
* `:json_codec` - codec for encoding and decoding JSON payloads. Defaults to
  `Jason`.
* `:path` - path to prefix on each request. Defaults to `/v2`.
* `:port` - the HTTP port used when making a request
* `:protocol` - the HTTP protocol used when making a request. Defaults to
  `https`.
* `:retry` - whether to automatically retry failed API calls. May be `true` or
  `false`. Defaults to `false`.  
* `:retry_opts` - options used when performing retries. Defaults to `[]`.
  * `:max_attempts` - the maximum number of retry attempts. Defaults to `3`.
