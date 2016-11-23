defmodule Bookshelf.BookViewTest do
  use Bookshelf.ModelCase
  import Bookshelf.Factory
  alias Bookshelf.BookView

  test "book.json" do
    book = insert(:book)

    rendered_book = BookView.render("book.json", book: book)

    assert rendered_book == %{
      title: book.title,
      author: book.author,
      cover_path: book.cover_path,
      file_path: book.file_path,
      inserted_at: book.inserted_at,
      updated_at: book.updated_at
    }
  end

  test "index.json" do
    book = insert(:book)

    rendered_books = BookView.render("index.json", books: [book])

    assert rendered_books == %{
      data: [BookView.render("book.json", book: book)]
    }
  end

  test "show.json" do
      book = insert(:book)

      rendered_books = BookView.render("show.json", %{book: book})

      assert rendered_books == %{
        data: BookView.render("book.json", book: book)
      }
    end
end