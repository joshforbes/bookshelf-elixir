defmodule Bookshelf.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author, :string
      add :cover_path, :string
      add :file_path, :string

      timestamps
    end
  end
end
