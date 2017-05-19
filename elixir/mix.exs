defmodule ElixirYatzy.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_yatzy,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod ]
  end
end
