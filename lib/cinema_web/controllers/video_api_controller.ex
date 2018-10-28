defmodule CinemaWeb.VideoAPIController do
    use CinemaWeb, :controller
  
    alias Cinema.Video
  
    def show(conn, %{"id" => id}) do
        video = Video.get(id)

        json conn, %{id: video.id, filename: video.filename, inserted_at: video.inserted_at}
    end
  end
  