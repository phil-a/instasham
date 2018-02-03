defmodule InstashamWeb.Router do
  use InstashamWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InstashamWeb do
    pipe_through :api
  end
end
