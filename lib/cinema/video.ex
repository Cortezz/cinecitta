defmodule Cinema.Video do
  use Ecto.Schema
  import Ecto.Changeset


  schema "videos" do
    field :duration, :float
    field :filename, :string

    timestamps()
  end

  @doc false
  def changeset(video, attrs) do
    video
    |> cast(attrs, [:filename, :duration])
    |> validate_required([:filename])
  end
end
