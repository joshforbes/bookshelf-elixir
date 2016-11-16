defmodule Bookshelf.Book do
  use Bookshelf.Web, :model

  schema "books" do
    field :title
    field :author
    field :cover_path
    field :file_path

    timestamps
  end
end