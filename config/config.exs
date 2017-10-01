# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_deploy,
  ecto_repos: [PhoenixDeploy.Repo]

# Configures the endpoint
config :phoenix_deploy, PhoenixDeployWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3B2rIJ69itex/hbI3xjMWBBfUDiz3CwyEvrCCYrJkC/1+qSsy904PibXsiiC3ibO",
  render_errors: [view: PhoenixDeployWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixDeploy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
