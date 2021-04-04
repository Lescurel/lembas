defmodule Lembas.Repo.Migrations.CreateRecipeIngredientUnits do
  use Ecto.Migration

  def change do
    create table(:recipe_ingredient_units) do
      add :unit_id, references(:units, on_delete: :delete_all), null: false
      add :recipe_id, references(:recipes, on_delete: :delete_all), null: false
      add :ingredient_id, references(:ingredients, on_delete: :delete_all), null: false

      timestamps()
    end

    create index(:recipe_ingredient_units, [:unit_id])
    create index(:recipe_ingredient_units, [:recipe_id])
    create index(:recipe_ingredient_units, [:ingredient_id])
  end
end
