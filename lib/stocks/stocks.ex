defmodule Stocks.Stock do

  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "stocks" do
    field :exchange, :string, default: ""
    field :exchange_short_name, :string, default: ""
    field :is_etf, :boolean, default: false
    field :market_cap, :decimal, default: 0
    field :name, :string, default: ""
    field :price, :decimal, default: 0
    field :symbol, :string, default: ""

  end
end
