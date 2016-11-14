defmodule Bookshelf.PageController do
  use Bookshelf.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
