defmodule Lembas.Repo.Migrations.CreateUnits do
  use Ecto.Migration

  def change do
    create table(:units) do
      add :name, :string
      add :factor, :float
      add :offset, :float

      timestamps()
    end

    create unique_index(:units, [:name])
  end
end
