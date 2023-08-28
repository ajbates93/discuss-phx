defmodule DiscussWeb.DiscussController do
  use DiscussWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    # render(conn, :show, messenger: messenger)

    json(conn, %{id: messenger})
  end
end
