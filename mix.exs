defmodule MyApp123.Mixfile do
  use Mix.Project

  def project do
    [ app: :my_app123,
      version: "0.0.1",
      elixir: "~> 1.0.0-rc1",
      elixirc_paths: ["lib", "web"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { MyApp123, [] },
      applications: [:phoenix, :cowboy, :logger]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix, "0.4.1"},
      {:cowboy, "~> 1.0.0"},
      {:ex_aerospike,git: "https://github.com/NikolaMandic/ex_aerospike",app: false},
      {:jiffy,git: "https://github.com/davisp/jiffy",app: false}
    ]
  end
end
