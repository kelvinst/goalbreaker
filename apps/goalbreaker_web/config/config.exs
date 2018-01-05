# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :goalbreaker_web,
  namespace: GoalbreakerWeb

# Configures the endpoint
config :goalbreaker_web, GoalbreakerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/VXiY8h6NPRWIKFO9CgmJj5Ho5eFs6laMSRJ+KCAJi4DG2ag/B/6Lic+971fPljI",
  render_errors: [view: GoalbreakerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GoalbreakerWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :goalbreaker_web, :generators,
  context_app: :goalbreaker

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
