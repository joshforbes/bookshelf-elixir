defmodule Bookshelf.BookControllerTest do
  use Bookshelf.ConnCase

  test "#index renders a list of books" do
    conn = build_conn()
    book = insert(:book)

    conn = get conn, book_path(conn, :index)

    assert json_response(conn, 200) == %{
      "books" => [%{
        "title" => book.title,
        "author" => book.description,
        'cover_path' => book.cover_path,
        'file_path' => book.file_path,
        "inserted_at" => Ecto.DateTime.to_iso8601(book.inserted_at),
        "updated_at" => Ecto.DateTime.to_iso8601(book.updated_at)
      }]
    }
  end
end