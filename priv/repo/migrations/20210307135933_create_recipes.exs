defmodule Lembas.Repo.Migrations.CreateRecipes do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name, :string
      add :instructions, :string
      add :cooking_time, :time
      add :yield, :integer

      timestamps()
    end

    create unique_index(:recipes, [:name])
  end
end
