defmodule ChatterWeb.PageController do
  use ChatterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
