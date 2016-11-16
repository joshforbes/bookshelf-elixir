defmodule Bookshelf.Book do
  use Bookshelf.Web, :model

  schema "books" do
    field :title
    field :author
    field :cover_path
    field :file_path

    timestamps
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:name, :author, :cover_path, :file_path])
    |> validate_required([:name, :author, :file_path])
  end
end