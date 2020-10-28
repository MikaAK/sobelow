defmodule Sobelow.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sobelow,
      version: "0.10.4",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: "Security-focused static analysis for the Phoenix framework",
      name: "Sobelow",
      source_url: "https://github.com/nccgroup/sobelow",
      homepage_url: "https://sobelow.io",
      docs: docs()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :eex, :inets]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, "~> 0.20", only: :dev}]
  end

  defp package() do
    [
      licenses: ["Apache 2"],
      maintainers: ["Griffin Byatt"],
      links: %{"GitHub" => "https://github.com/nccgroup/sobelow"}
    ]
  end

  defp docs() do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end
end
