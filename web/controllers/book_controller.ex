defmodule Bookshelf.BookController do
  use Bookshelf.Web, :controller

  alias Bookshelf.{Book, ErrorView}

  def index(conn, _params) do
    books = Repo.all(Book)
    render conn, "index.json", books: books
  end

  def show(conn, %{"id" => id}) do
    case Repo.get(Book, id) do
      nil -> conn |> put_status(404) |> render(ErrorView, "404.json", message: "Book Not Found")
      book -> render conn, "show.json", book: book
    end
end
