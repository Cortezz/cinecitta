defmodule CinemaWeb.Router do
  use CinemaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CinemaWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "videos", VideoController, only: [:index, :new, :create]
  end

  scope "/api/v1", CinemaWeb do
    pipe_through :api
  
    resources "videos", VideoAPIController, only: [:create, :show, :index]
  end
end
