defmodule InstashamWeb.Router do
  use InstashamWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
      schema: InstashamWeb.Schema

    if Mix.env == :dev  do
      forward "/graphiql", Absinthe.Plug.GraphiQL,
        schema: InstashamWeb.Schema
    end
  end
  
end
