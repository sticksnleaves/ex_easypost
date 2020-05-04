defmodule EasyPost.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_easypost,
      version: "3.0.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: dialyzer()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      { :hackney, "~> 1.15", optional: true },

      { :jason, "~> 1.2", optional: true },

      #
      # dev
      #

      { :dialyxir, "~> 1.0", only: :dev, runtime: false },

      { :ex_doc, ">= 0.0.0", only: :dev, runtime: false }
    ]
  end

  defp dialyzer do
    [
      plt_core_path: "_build/#{Mix.env()}"
    ]
  end
end
