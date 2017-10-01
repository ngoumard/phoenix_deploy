defmodule PhoenixDeployWeb.HomeController do
    use Phoenix.Controller

    def index(conn, _params) do
        conn
        |> json("hello")
    end

end