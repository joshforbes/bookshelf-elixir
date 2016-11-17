defmodule Bookshelf.BookController do
  use Bookshelf.Web, :controller

  alias Bookshelf.Book

  def index(conn, _params) do
    books = Repo.all(Book)
    render conn, "index.json", books: books
  end

  def show(conn, %{"id" => id}) do
      book = Repo.get!(Book, id)
      render conn, "show.json", book: book
    end
end
