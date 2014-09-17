defmodule MyApp123.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
  #    conn |> assign_layout(:none) |> render "index", message: "hello"

    render conn, "index"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
