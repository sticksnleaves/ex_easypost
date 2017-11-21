defmodule ExEasyPost.Address do
  @moduledoc """
  """

  @verify [ :verify, :verify_strict ]

  @doc """
  Create and verify an Address.

  ## Parameters
    - `:street1` - first line of the address
    - `:street2` - second line of the address
    - `:city` - full city name
    - `:state` - state or province
    - `:zip` - ZIP or postal code
    - `:country` - ISO 3166 country code for the country the address is located in
    - `:name` - name of attention for a person
    - `:company` - name of attention for a company
    - `:phone` - phone number to reach the person or organization
    - `:email` - email to reach the person or organization
    - `:residential` - residential delivery indicator
    - `:carrier_facility` - specific address designation for a carrier facility
    - `:federal_tax_id` - federal tax identifier of a person or organization
    - `:state_tax_id` - state tax identifier for a person or organization
    - `:verify` - list of verifications to  perform when creating an address
                 (possible values: `delivery`, `zip4`)
    - `:verify_strict` - list of verifications to perform when creating an
                        address. Any verification failures will cause the
                        request to fail. (possible values: `delivery`, `zip4`)

  ## Examples
      iex> ExEasyPost.Address.create(%{
      ...>   street1: "1060 N Capitol Ave",
      ...>   street2: "E120",
      ...>   city: "Indianapolis",
      ...>   state: "IN",
      ...>   zip: "46202",
      ...>   country: "US",
      ...>   company: "ShipX",
      ...>   phone: "866-560-6237"
      ...> })
      ...> |> ExEasyPost.request()
      {:ok, response}
  """
  @spec create(map) :: ExEasyPost.Operation.t
  def create(params) do
    with_verification    = Map.take(params, @verify)
    without_verification = Map.drop(params, @verify)

    params = Map.merge(%{ address: without_verification }, with_verification)

    %ExEasyPost.Operation{ http_method: :post, params: params, path: "addresses" }
  end

  @doc """
  Retrieve an Address by it's id.

  ## Example
      iex> ExEasyPost.Address.find("adr_a6fd5dd822c94bdfa1e3f2d28a4dbf9b") |> ExEasyPost.request()
      {:ok, response}
  """
  @spec find(binary) :: ExEasyPost.Operation.t
  def find(id) do
    %ExEasyPost.Operation{ http_method: :get, path: "addresses/#{id}" }
  end
end
