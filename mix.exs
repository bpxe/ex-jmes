defmodule JMES.MixProject do
  use Mix.Project

  def project do
    [
      app: :jmes,
      version: "0.5.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      description: "JMES implements JMESPath, a query language for JSON (BPXE's fork)",
      source_url: "https://github.com/bpxe/ex-jmes",
      elixirc_options: [warnings_as_errors: true],
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:assert_value, "~> 0.9.5", only: [:dev, :test]},
      {:benchee, "~> 1.0.1", only: [:dev]},
      {:credo, "1.5.4", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0", only: :dev, runtime: false},
      {:earmark, "~> 1.4.13", only: :dev, runtime: false},
      {:ex_doc, "~> 0.23.0", only: :dev, runtime: false},
      {:excoveralls, "~> 0.13.4", only: :test, runtime: false},
      {:mix_test_watch, "~> 1.0.2", only: :dev, runtime: false},
      {:versioce, "~> 0.2.1"},
      {:jason, "~> 1.2.2"}
    ]
  end

  defp package do
    [
      name: "bpxe_jmes",
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/bpxe/ex-jmes"},
      exclude_patterns: ~w(\.swp)
    ]
  end
end
