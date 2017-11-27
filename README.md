# ExEasyPost

[![Build Status](https://travis-ci.org/sticksnleaves/ex_easypost.svg?branch=master)](https://travis-ci.org/sticksnleaves/ex_easypost)

EasyPost client library for Elixir.

https://hexdocs.pm/ex_easypost

## Installation

```elixir
def deps do
  [
    {:ex_easypost, "~> 0.1"},
    {:httpoison, "~> 0.11"},
    {:poison, "~> 2.2 or ~> 3.0"}
  ]
end
```

## Usage

ExEasyPost takes a data driven approach to making API requests. Each function
meant to perform an API action will generate a struct which can then be used
to perform a particular operation.

```elixir
ExEasyPost.Address.get("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9b") |> ExEasyPost.request
#> {:ok, response}
```

You can also pass client configuration per request.

```elixir
ExEasyPost.Address.get("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9b") |> ExEasyPost.request(api_key: "xxxx")
#> {:ok, response}
```

You can also provide an application wide config.

```elixir
# config.exs
config :ex_easypost, api_key: {:system, "EASYPOST_API_KEY"}
```

## Supported Endpoints

- [x] Addresses
- [x] Parcels
- [x] Insurances
- [x] Shipments
- [x] Trackers
- [x] Batches
- [x] CustomsInfos
- [x] CustomsItems
- [x] Orders
- [x] Pickups
- [ ] Reports
- [ ] ScanForms
- [x] Webhooks
- [ ] API Keys
- [ ] Users
- [ ] Child Users
- [ ] CarrierTypes
- [ ] CarrierAccounts
