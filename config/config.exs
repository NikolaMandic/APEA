# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, MyApp123.Router,
  port: 5000,
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_my_app123_key",
  session_secret: "GWY$%EMRG)+EF(_5__PR@QX76_OY1O64_4V)65Y1G+GCC5*MROZK*H8NN+%L228^M6M",
  catch_errors: true,
  debug_errors: false,
  error_controller: MyApp123.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
