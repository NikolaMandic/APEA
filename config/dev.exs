use Mix.Config

config :phoenix, MyApp123.Router,
  port: System.get_env("PORT") || 5000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_my_app123_key",
  session_secret: "GWY$%EMRG)+EF(_5__PR@QX76_OY1O64_4V)65Y1G+GCC5*MROZK*H8NN+%L228^M6M",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


