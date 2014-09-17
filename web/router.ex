defmodule MyApp123.Router do
  use Phoenix.Router

  get "/", MyApp123.PageController, :index, as: :pages
  resources "/users", MyApp123.UserController
end
