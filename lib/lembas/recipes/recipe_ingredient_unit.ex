defmodule Lembas.Recipes.RecipeIngredientUnit do
  use Ecto.Schema
  import Ecto.Changeset

  alias Lembas.Recipes.Recipe
  alias Lembas.Recipes.Ingredient
  alias Lembas.Recipes.Unit

  schema "recipe_ingredient_units" do

    belongs_to :recipe, Recipe
    belongs_to :ingredient, Ingredient
    belongs_to :unit, Unit
    timestamps()
  end

  @doc false
  def changeset(recipe_ingredient_unit, attrs) do
    recipe_ingredient_unit
    |> cast(attrs, [])
    |> validate_required([])
  end
end
