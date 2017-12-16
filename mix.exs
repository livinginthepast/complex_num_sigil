defmodule ComplexNumSigil.Mixfile do
  use Mix.Project

  def project do
    [
      app: :complex_num_sigil,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/livinginthepast/complex_num_sigil",
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
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
    ]
  end

  defp description() do
    """
    Adds a `~i` sigil for working with `ComplexNum`.
    """
  end

  defp package() do
    [
      licenses: ["MIT"],
      maintainers: ["Eric Saxby"],
      links: %{"GitHub" => "https://github.com/livinginthepast/complex_num_sigil"},
    ]
  end
end
