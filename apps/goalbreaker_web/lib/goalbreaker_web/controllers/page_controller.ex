defmodule GoalbreakerWeb.PageController do
  use GoalbreakerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
