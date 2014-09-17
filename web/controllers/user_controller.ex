defmodule MyApp123.UserController do
  use Phoenix.Controller
  @c  ExAerospike.connect
  def index(conn, _params) do

    text conn,:jiffy.encode %{"users"=>ExAerospike.get(@c, "email",'name')}
    #render conn, "index"
  end
  def show(conn, _params) do
    IO.puts "show user"
    r=ExAerospike.get(@c, _params["id"],'name')
    IO.puts _params["id"] 
    json conn, JSON.encode!(%{"user"=>r})
  end
  def new(conn, _params) do
    
  end
  def create(conn, _params) do
    IO.puts _params["name"]
    IO.puts _params["email"]

    r=ExAerospike.write(@c, _params["email"],'name' ,_params["name"])
    text conn, "ok"

  end
  def edit(conn, _params) do
    
  end
  def destroy(conn, _params) do
    
  end
  def update(conn, _params) do
    
  end
  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
