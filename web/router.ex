defmodule Bookshelf.Router do
  use Bookshelf.Web, :router

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

  scope "/", Bookshelf do
    pipe_through :browser # Use the default browser stack

    scope "/Books" do
      get "/", BookController, :index
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", Bookshelf do
  #   pipe_through :api
  # end
end
