# ExEasyPost

[![Build Status](https://travis-ci.org/sticksnleaves/ex_easypost.svg?branch=master)](https://travis-ci.org/sticksnleaves/ex_easypost)
[![HexDocs](https://img.shields.io/badge/hexdocs-release-blue.svg)](https://hexdocs.pm/ex_easypost/)

EasyPost client library for Elixir.

## Getting Started

You will need a compatible HTTP client (default: `:httpoison`) and JSON codec
(default: `:poison`).

```elixir
def deps do
  [
    {:ex_easypost, "~> 1.0"},
    {:httpoison, "~> 0.13"},
    {:poison, "~> 2.2 or ~> 3.1"}
  ]
end
```

## Usage

ExEasyPost takes a data driven approach to making API requests. Each function
meant to perform an API action will generate a struct which can then be used
to perform a particular operation.

```elixir
ExEasyPost.Address.find("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9b") |> ExEasyPost.request
```

It's also possible to pass client configuration per request.

```elixir
ExEasyPost.Address.find("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9b") |> ExEasyPost.request(api_key: "xxxx")
```

You can provide an application wide config, as well.

```elixir
# config.exs
config :ex_easypost, api_key: {:system, "EASYPOST_API_KEY"}
```

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
