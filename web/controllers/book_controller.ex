defmodule Bookshelf.BookController do
  use Bookshelf.Web, :controller

  alias Bookshelf.Book

  def index(conn, _params) do
    books = Repo.all(Book)
    render conn, "index.json", books: books
  end
end
