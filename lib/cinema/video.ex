defmodule Cinema.Video do
  use Ecto.Schema
  import Ecto.Changeset

  alias Cinema.Repo


  schema "video" do
    field :duration, :float
    field :filename, :string

    timestamps()
  end

  @doc false
  def changeset(video, attrs \\ %{}) do
    video
    |> cast(attrs, [:filename, :duration])
    |> validate_required([:filename])
  end

  def create(attrs) do
    Repo.insert(attrs)
  end

  def get_list do
    Repo.all(Cinema.Video)
  end
end
