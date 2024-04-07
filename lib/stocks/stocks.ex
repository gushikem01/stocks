defmodule Stocks.Stock do

  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "stocks" do
    field :symbol, :string, default: ""
    field :name, :string, default: ""
    field :price, :decimal, default: 0
    field :exchange, :string, default: ""
    field :exchange_short_name, :string, default: ""
    field :is_etf, :boolean, default: false

  end
end
