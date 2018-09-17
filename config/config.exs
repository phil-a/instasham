# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :instasham,
  ecto_repos: [Instasham.Repo]

# Configures the endpoint
config :instasham, InstashamWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TM273n6ntzlLcXvZ0g6KPKuvyztPf9FyNR3oJYLgRMIb0bWx1MD2YajflAe095mr",
  render_errors: [view: InstashamWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Instasham.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure Facebook Graph API Wrapper
config :facebook,
  app_id: nil,
  app_secret: nil,
  app_access_token: nil,
  graph_url: "https://graph.facebook.com",
  graph_video_url: "https://graph-video.facebook.com"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
