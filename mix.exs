defmodule ComplexNumSigil.Mixfile do
  use Mix.Project

  def project do
    [
      app: :complex_num_sigil,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:complex_num, "~> 1.1"},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
    ]
  end
end
