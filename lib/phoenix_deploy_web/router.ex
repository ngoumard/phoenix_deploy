defmodule PhoenixDeployWeb.Router do
  use PhoenixDeployWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixDeployWeb do
    pipe_through :api

    get "/", HomeController, :index
  end
end
