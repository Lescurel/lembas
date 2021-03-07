defmodule LembasWeb.PageController do
  use LembasWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
