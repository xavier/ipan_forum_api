# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ipan_forum_api,
  ecto_repos: [IpanForumApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :ipan_forum_api, IpanForumApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Nwxxh4i1DZB1YSVQVjmZkLSWBP2yqJi89MV1Bw2OVPPRuobPnJPfZlRWQioy1zw2",
  render_errors: [view: IpanForumApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: IpanForumApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
