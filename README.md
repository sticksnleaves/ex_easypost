# ExEasyPost

[![Build Status](https://travis-ci.org/sticksnleaves/ex_easypost.svg?branch=master)](https://travis-ci.org/sticksnleaves/ex_easypost)
[![HexDocs](https://img.shields.io/badge/hexdocs-release-blue.svg)](https://hexdocs.pm/ex_easypost/)

ExEasyPost is an Elixir client library for the EasyPost API.

## Features

1. Support for all EasyPost resources
2. Minimal configuration. Choose your favorite HTTP client and JSON codec.
3. Support for per-request configuration

## Getting Started

ExEasyPost allows you to choose which HTTP client and JSON codec you would like
to use. ExEasyPost supports `:hackney` and `:httpoison` (HTTP clients) and
`:poison` and `:jason` (JSON codecs) out of the box.

```elixir
defp deps do
  [
    {:ex_easypost, "~> 2.0"},
    {:hackney, "~> 1.12"},
    {:poison, "~> 3.1"}
  ]
end
```

## Usage

```elixir
ExEasyPost.Address.find("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9c")
|> ExEasyPost.request()
```

ExEasyPost will return `{:ok, response}` on success and `{:error, reason}` on
failure.

### Configuration

ExEasyPost allows you to provide configuration as part of your application
config or on a per-request basis.

**Application configuration**

```elixir
config :ex_easypost,
  api_key: "xxx"
```

**Per-request configuration**

```elixir
config = %{api_key: "xxx"}

ExEasyPost.Address.find("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9c")
|> ExEasyPost.request(config)
```

**Configuration options**

- `:api_key` - your EasyPost API key
- `:host` - host to make requests to (default: `api.easypost.com`)
- `:http_client` - HTTP client used to make requests (default: `ExEasyPost.Client.Hackney`)
- `:http_opts` - configuration options passed to the api client
- `:json_codec` - codec used to encode and decode JSON (default: `Poison`)
- `:path` - URI path to make requests to (default: `v2`)
- `:port` - HTTP port to make requests to
- `:protocol` - HTTP protocol to use when making requests (default: `https`)

## Supported Resources

- [x] [Address](https://hexdocs.pm/ex_easypost/ExEasyPost.Address.html)
- [x] [Parcel](https://hexdocs.pm/ex_easypost/ExEasyPost.Parcel.html)
- [x] [Insurance](https://hexdocs.pm/ex_easypost/ExEasyPost.Insurance.html)
- [x] [Shipment](https://hexdocs.pm/ex_easypost/ExEasyPost.Shipment.html)
- [x] [Tracker](https://hexdocs.pm/ex_easypost/ExEasyPost.Tracker.html)
- [x] [Batch](https://hexdocs.pm/ex_easypost/ExEasyPost.Batch.html)
- [x] [CustomsInfo](https://hexdocs.pm/ex_easypost/ExEasyPost.CustomsInfo.html)
- [x] [CustomsItem](https://hexdocs.pm/ex_easypost/ExEasyPost.CustomsItem.html)
- [x] [Order](https://hexdocs.pm/ex_easypost/ExEasyPost.Order.html)
- [x] [Pickup](https://hexdocs.pm/ex_easypost/ExEasyPost.Pickup.html)
- [x] [Report](https://hexdocs.pm/ex_easypost/ExEasyPost.Report.html)
- [x] [ScanForm](https://hexdocs.pm/ex_easypost/ExEasyPost.ScanForm.html)
- [x] [Webhook](https://hexdocs.pm/ex_easypost/ExEasyPost.Webhook.html)
- [x] [API Key](https://hexdocs.pm/ex_easypost/ExEasyPost.APIKey.html)
- [x] [User](https://hexdocs.pm/ex_easypost/ExEasyPost.User.html)
- [x] [CarrierType](https://hexdocs.pm/ex_easypost/ExEasyPost.CarrierType.html)
- [x] [CarrierAccount](https://hexdocs.pm/ex_easypost/ExEasyPost.CarrierAccount.html)
