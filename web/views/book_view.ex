defmodule Bookshelf.BookView do
  use Bookshelf.Web, :view

  def render("index.json", %{books: books}) do
    %{data: render_many(books, Bookshelf.BookView, "book.json")}
  end

  def render("show.json", %{book: book}) do
    %{data: render_one(book, Bookshelf.BookView, "book.json")}
  end
  
  def render("book.json", %{book: book}) do
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