defmodule Bookshelf.BookControllerTest do
  use Bookshelf.ConnCase

  test "#index renders a list of books" do
    conn = build_conn()
    book = insert(:book)

    conn = get conn, book_path(conn, :index)

    assert json_response(conn, 200) == render_json("index.json", books: [book])
  end

  defp render_json(template, assigns) do
      assigns = Map.new(assigns)

      Bookshelf.BookView.render(template, assigns)
      |> Poison.encode!
      |> Poison.decode!
    end
end