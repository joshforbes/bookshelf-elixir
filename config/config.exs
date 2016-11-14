# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :bookshelf,
  ecto_repos: [Bookshelf.Repo]

# Configures the endpoint
config :bookshelf, Bookshelf.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AWJjZgYZPu5WOeans941kxZxm+6Rd1AGF5aKkKkSSqspt6TXSo2qcsFalwruaE6g",
  render_errors: [view: Bookshelf.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Bookshelf.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
