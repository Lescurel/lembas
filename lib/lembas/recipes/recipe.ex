defmodule Lembas.Recipes.Recipe do
  use Ecto.Schema
  import Ecto.Changeset

  schema "recipes" do
    field :cooking_time, :time
    field :instructions, :string
    field :name, :string
    field :yield, :integer
    has_many :recipe_ingredient, RecipeIngredient

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:name, :instructions, :cooking_time, :yield])
    |> validate_required([:name, :instructions, :cooking_time, :yield])
    |> unique_constraint(:name)
  end
end