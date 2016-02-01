defmodule Callumapi.Mixfile do
  use Mix.Project

  def project do
    [app: :callumapi,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Callumapi, []},
     applications: [:phoenix, :cowboy, :logger, :phoenix_ecto, :httpoison, :tzdata]]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 1.1.4"},
      {:phoenix_ecto, "~> 2.0.0"},
      {:phoenix_html, "~> 2.5.0"},
      {:postgrex, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:httpoison, "~> 0.7"},
      {:timex, "~> 1.0.0"},
      {:credo, "~> 0.2", only: [:dev, :test]},
      {:ex_machina, "~> 0.6.1", only: :test}
    ]
  end
end
