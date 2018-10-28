defmodule CinemaWeb.VideoController do
  use CinemaWeb, :controller

  alias Cinema.Video

  def index(conn, _params) do
    videos = Video.get_list()
    render conn, "index.html", videos: videos
  end

  def new(conn, _params) do
      changeset = Video.changeset(%Video{})
      render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"video" => video_params}) do
      Video.create(Video.changeset(%Video{}, %{filename: video_params["video"].filename}))

      render conn, "index.html"
  end
end
