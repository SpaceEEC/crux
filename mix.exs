defmodule Crux.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Crux",
      docs: [
        groups_for_modules: groups_for_modules(),
        source_url_pattern: "https://github.com/SpaceEEC/%{app}/blob/master/%{path}#L%{line}"
      ],
      homepage_url: "https://github.com/SpaceEEC/crux/"
    ]
  end

  defp groups_for_modules do
    [
      "Crux.Base": [~r/Crux\.Base.*/],
      "Crux.Cache": [~r/Crux\.Cache.*/],
      "Crux.Gateway": [~r/Crux\.Gatewaye.*/],
      "Crux.Rest": [~r/Crux\.Rest.*/],
      "Crux.Structs": [~r/Crux\.Structs.*/]
    ]
  end

  defp deps do
    [
      {:crux_structs,
       [path: "apps/crux_structs", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_cache,
       [path: "apps/crux_cache", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_rest,
       [path: "apps/crux_rest", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_gateway,
       [path: "apps/crux_gateway", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:ex_doc, git: "https://github.com/SpaceEEC/ex_doc", only: :dev, override: true}
    ]
  end
end
