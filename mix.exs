defmodule Routexl.Mixfile do
  use Mix.Project

  def project do
    [
      app: :routexl,
      version: "1.0.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:httpoison]
    ]
  end

  def package() do
    [
      maintainers: ["Sushruth Sivaramakrishnan"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/farmizen/routexl"}
    ]
  end

  def description do
    """
    RouteXL API client for Elixir and Erlang.
    """
  end

  defp deps do
    [
      {:httpoison, "~> 0.11"},
      {:poison, "~> 3.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
