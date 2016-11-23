defmodule Bookshelf.BookControllerTest do
  use Bookshelf.ConnCase

  alias Bookshelf.{BookView, ErrorView}

  test "index/2 responds with all Users" do
    conn = build_conn()
    book = insert(:book)

    conn = get conn, book_path(conn, :index)

    assert json_response(conn, 200) == render_json(BookView, "index.json", books: [book])
  end

  describe "show/2" do
    test "Responds with a book if the book is found" do
      conn = build_conn()
      book = insert(:book)

      conn = get conn, book_path(conn, :show, book)

      assert json_response(conn, 200) == render_json(BookView, "show.json", book: book)
    end

    test "Responds with a message indicating book not found" do
      conn = build_conn()

      conn = get conn, book_path(conn, :show, 999)

      assert json_response(conn, 404) == render_json(ErrorView, "404.json", message: "Book Not Found")
    end
  end

end