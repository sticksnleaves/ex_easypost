defmodule ExEasyPost.Mixfile do
  use Mix.Project

  @version "2.0.2"

  def project do
    [
      app: :ex_easypost,
      version: @version,
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [plt_add_apps: [:hackney, :httpoison]],
      lockfile: lockfile(),
      package: package(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.html": :test,
        "coveralls.travis": :test
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:hackney, "~> 1.0", optional: true},
      {:httpoison, "~> 0.12 or ~> 1.0", optional: true},
      {:poison, ">= 2.2.0 and < 5.0.0", optional: true},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:bypass, "~> 0.6", only: :test},
      {:excoveralls, "~> 0.7", only: :test, runtime: false},
      {:dialyxir, "~> 1.0.0-rc", only: [:dev, :test], runtime: false}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp lockfile do
    cond do
      Version.match?(System.version(), ">= 1.4.0 and < 1.6.0") ->
        "mix_1_4.lock"

      true ->
        "mix.lock"
    end
  end

  defp package do
    [
      description: "Elixir client for the EasyPost API",
      files: ["lib", "config", "mix.exs", "README*"],
      maintainers: ["Anthony Smith"],
      licenses: ["MIT"],
      links: %{
        GitHub: "https://github.com/sticksnleaves/ex_easypost"
      }
    ]
  end
end
