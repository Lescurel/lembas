defmodule Lembas.Repo.Migrations.CreateRecipeIngredients do
  use Ecto.Migration

  def change do
    create table(:recipe_ingredients) do

      timestamps()
    end

  end
end
