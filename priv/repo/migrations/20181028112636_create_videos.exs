defmodule Cinema.Repo.Migrations.CreateVideos do
  use Ecto.Migration

  def change do
    create table(:video) do
      add :filename, :string
      add :duration, :float

      timestamps()
    end

  end
end
