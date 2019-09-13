defmodule Crux.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Crux",
      version: DateTime.utc_now() |> DateTime.truncate(:second) |> DateTime.to_string(),
      docs: [
        groups_for_modules: groups_for_modules(),
        source_url_pattern: "https://github.com/SpaceEEC/%{app}/blob/master/%{path}#L%{line}"
      ],
      homepage_url: "https://github.com/SpaceEEC/crux/"
    ]
  end

  defp groups_for_modules do
    [
      Base: [~r/Crux\.Base.*/],
      Cache: [~r/Crux\.Cache.*/],
      Gateway: [~r/Crux\.Gateway.*/],
      Rest: [~r/Crux\.Rest.*/],
      Structs: [~r/Crux\.Structs.*/],
      Extensions: [~r/Crux\.Extensions.*/]
    ]
  end

  defp deps do
    [
      {:crux_base,
       [path: "apps/crux_base", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_structs,
       [path: "apps/crux_structs", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_cache,
       [path: "apps/crux_cache", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_rest,
       [path: "apps/crux_rest", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_gateway,
       [path: "apps/crux_gateway", from_umbrella: true, env: :dev, manager: :mix, override: true]},
      {:crux_extensions,
       [
         path: "apps/crux_extensions",
         from_umbrella: true,
         env: :dev,
         manager: :mix,
         override: true
       ]},
      {:credo, "~> 1.1.2", env: :dev, manager: :mix, override: true},
      {:ex_doc,
       git: "https://github.com/spaceeec/ex_doc",
       branch: "feat/umbrella",
       only: :dev,
       runtime: false,
       override: true}
    ]
  end
end
