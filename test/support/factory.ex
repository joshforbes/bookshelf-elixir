defmodule Bookshelf.Factory do
  use ExMachina.Ecto, repo: Bookshelf.Repo
  
  def book_factory do
    %Bookshelf.Book{
      title: "Practical Object-Oriented Design in Ruby",
      author: "Sandi Metz",
      cover_path: "uploads/covers/1.jpg",
      file_path: "uploads/files/1.pdf"
    }
  end
end