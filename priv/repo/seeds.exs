# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Bookshelf.Repo.insert!(%Bookshelf.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Bookshelf.Repo
alias Bookshelf.Book

Repo.delete_all(Book)
Repo.insert!(%Book{
  title: "Practical Object-Oriented Design in Ruby",
  author: "Sandi Metz",
  cover_path: "uploads/covers/1.jpg",
  file_path: "uploads/files/1.pdf"
})
