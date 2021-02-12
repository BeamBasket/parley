# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :square_arrow,
  ecto_repos: [SquareArrow.Repo]

config :square_arrow_web,
  ecto_repos: [SquareArrow.Repo],
  generators: [context_app: :square_arrow, binary_id: true]

# Configures the endpoint
config :square_arrow_web, SquareArrowWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Bw3imy1o29ZEqjd7UBjSgcw6VeU31DceL54xwnG5g2o48WqroIaGYosAr+KqrbPI",
  render_errors: [view: SquareArrowWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SquareArrow.PubSub,
  live_view: [signing_salt: "/xgRV6wX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
