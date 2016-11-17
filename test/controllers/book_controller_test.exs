defmodule Bookshelf.BookControllerTest do
  use Bookshelf.ConnCase

  alias Bookshelf.BookView

  test "#index renders a list of books" do
    conn = build_conn()
    book = insert(:book)

    conn = get conn, book_path(conn, :index)

    assert json_response(conn, 200) == render_json(BookView, "index.json", books: [book])
  end

  test "#show renders the specified book" do
      conn = build_conn()
      book = insert(:book)

      conn = get conn, book_path(conn, :show, book)

      assert json_response(conn, 200) == render_json(BookView, "show.json", book: book)
    end
end