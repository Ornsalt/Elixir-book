defmodule KvUmbrella.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "app",
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    []
  end
end
