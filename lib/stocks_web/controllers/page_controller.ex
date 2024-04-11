defmodule StocksWeb.PageController do
  use StocksWeb, :controller
  use Ecto.Schema

  import Ecto.Query, only: [limit: 2]
  alias Stocks.Stock
  alias Stocks.Repo

  @spec home(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    stocks = Stock
      |> limit(10)
      |> Repo.all()
      |> Enum.sort_by(& &1.market_cap, &>=/2)

      render(conn, :home, layout: false, stocks: stocks)
  end

end
