defmodule Lembas.Recipes.Unit do
  use Ecto.Schema
  import Ecto.Changeset

  alias Lembas.Recipes.RecipeIngredient

  schema "units" do
    field :factor, :float
    field :name, :string
    field :offset, :float
    field :type, Ecto.Enum, values: [:time, :length, :volume, :temperature, :mass, :piece]
    has_many :recipe_ingredient, RecipeIngredient
    timestamps()
  end

  @doc false
  def changeset(unit, attrs) do
    unit
    |> cast(attrs, [:name, :factor, :offset])
    |> validate_required([:name, :factor, :offset])
    |> unique_constraint(:name)
  end
end
