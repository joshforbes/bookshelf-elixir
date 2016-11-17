defmodule Bookshelf.BookView do
  use Bookshelf.Web, :view

  def render("index.json", %{books: books}) do
    %{
      books: Enum.map(books, &book_json/1)
    }
  end

  def render("show.json", %{book: book}) do
      %{book: book_json(book)}
    end
  
  def book_json(book) do
    %{
      title: book.title,
      author: book.author,
      cover_path: book.cover_path,
      file_path: book.file_path,
      inserted_at: book.inserted_at,
      updated_at: book.updated_at
    }
  end
end