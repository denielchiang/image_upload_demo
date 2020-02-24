# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :image_upload_demo,
  ecto_repos: [ImageUploadDemo.Repo]

# Configures the endpoint
config :image_upload_demo, ImageUploadDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MY+LlTfhe/kCceClHuYkSlKlbAF94h4HUhE+uHg+f0vnfUGKr42tMstp8OM0rYsj",
  render_errors: [view: ImageUploadDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ImageUploadDemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :arc,
  storage: Arc.Storage.Local
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
