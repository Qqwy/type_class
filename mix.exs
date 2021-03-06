defmodule TypeClass.Mixfile do
  use Mix.Project

  def project do
    [
      app:  :type_class,
      name: "TypeClass",
      description: "Principled type classes for Elixir",

      version: "0.0.1",
      elixir:  "~> 1.3",

      package: [
        maintainers: ["Brooklyn Zelenka"],
        licenses:    ["MIT"],
        links:       %{"GitHub" => "https://github.com/expede/type_class"}
      ],

      source_url:   "https://github.com/expede/type_class",
      homepage_url: "https://github.com/expede/type_class",

      aliases: ["quality": ["test", "credo --strict"]],

      deps: [
        {:operator, "~> 0.2"},
        {:quark,    "~> 2.2"},

        {:credo,    "~> 0.4",  only: [:dev, :test]},

        {:dialyxir, "~> 0.3",  only: :dev},
        {:earmark,  "~> 1.0",  only: :dev},
        {:ex_doc,   "~> 0.13", only: :dev},

        {:inch_ex,  "~> 0.5",  only: [:dev, :docs, :test]}
      ],

      docs: [
        extras: ["README.md"],
        logo: "./brand/logo.png",
        main: "readme"
      ]
    ]
  end
end
