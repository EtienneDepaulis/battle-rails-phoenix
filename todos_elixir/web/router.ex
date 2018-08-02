defmodule TodosElixir.Router do
  use TodosElixir.Web, :router

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

  scope "/", TodosElixir do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", TodosElixir do
    pipe_through :api

    resources "/todos", Api.TodoController, except: [:new, :edit]
  end
end
