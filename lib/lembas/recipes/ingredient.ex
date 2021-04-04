defmodule Lembas.Recipes.Ingredient do
  use Ecto.Schema
  import Ecto.Changeset

  alias Lembas.Recipes.RecipeIngredientUnit

  schema "ingredients" do
    field :name, :string
    has_many :recipe_ingredient_units, RecipeIngredientUnit
    timestamps()
  end

  @doc false
  def changeset(ingredient, attrs) do
    ingredient
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
