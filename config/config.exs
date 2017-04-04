# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :foundation_example,
  ecto_repos: [FoundationExample.Repo]

# Configures the endpoint
config :foundation_example, FoundationExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "kWS3lEiSpFDwK0tan6Ge07jmOXdhyNenSJiTHDh9vPa7dNo1bPd6U7o6MehGWcKa",
  render_errors: [view: FoundationExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FoundationExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
