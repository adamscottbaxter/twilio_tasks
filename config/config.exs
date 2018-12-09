# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :ex_twilio, account_sid:   {:system, "TWILIO_ACCOUNT_SID"},
                   auth_token:    {:system, "TWILIO_AUTH_TOKEN"}

# General application configuration
config :twilio_tasks,
  ecto_repos: [TwilioTasks.Repo]

# Configures the endpoint
config :twilio_tasks, TwilioTasksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3zE0v3OtMU53eUmdlVA0iwWDWyQS710ndA/30EGqXl19WQJNXwkovi+wVC0IANqU",
  render_errors: [view: TwilioTasksWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TwilioTasks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
