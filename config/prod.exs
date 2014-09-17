use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, MyApp123.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_my_app123_key",
  session_secret: "GWY$%EMRG)+EF(_5__PR@QX76_OY1O64_4V)65Y1G+GCC5*MROZK*H8NN+%L228^M6M"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

