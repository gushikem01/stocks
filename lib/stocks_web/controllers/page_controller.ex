defmodule StocksWeb.PageController do
  use StocksWeb, :controller

  alias Stocks.Stock
  alias Stocks.Repo

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    stocks = Repo.all(Stock)
    render(conn, :home, layout: false, stocks: stocks)
  end
end
