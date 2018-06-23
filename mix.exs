defmodule Mathx.Mixfile do
  use Mix.Project

  def project do
    [app: :mathx,
     version: "0.1.0",
     elixir: "~> 1.2",
     description: description(),
     package: package(),
     deps: deps(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    The Mathx module adds many useful functions that extend Elixir's standard library.
    """
  end

  defp package do
    [
      maintainers: ["happy"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub": "https://github.com/gulib/mathx"}
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.11.4", only: [:dev]}
    ]
  end
end
