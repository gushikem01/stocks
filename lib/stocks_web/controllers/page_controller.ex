defmodule StocksWeb.PageController do
  use StocksWeb, :controller

  # alias Ecto.Query.Builder.OrderBy
  alias Ecto.Query.Builder.OrderBy
  alias Stocks.Stock
  alias Stocks.Repo

  @spec home(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    stocks = Stock
      |> Repo.all(
        order_by: [asc: :market_cap]
      )
      |> Enum.sort_by(& &1.market_cap, &>=/2)
      |> Enum.take(10)
    render(conn, :home, layout: false, stocks: stocks)
  end

end
