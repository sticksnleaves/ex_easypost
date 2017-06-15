# ExEasyPost

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

```elixir
ExEasyPost.Address.get("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9b")
|> ExEasyPost.request
```

## Supported Endpoints

- [x] Addresses
- [x] Parcels
- [x] Insurances
- [x] Shipments
- [ ] Trackers
- [ ] Batches
- [ ] CustomsInfos
- [ ] CustomsItems
- [ ] Orders
- [ ] Pickups
- [ ] Reports
- [ ] ScanForms
- [ ] Webhooks
- [ ] API Keys
- [ ] Users
- [ ] Child Users
- [ ] CarrierTypes
- [ ] CarrierAccounts
