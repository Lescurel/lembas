defmodule MyApp.Repo.Migrations.AddTypeToUnit do
  use Ecto.Migration

  def change do
    create_query = "CREATE TYPE unit_type AS ENUM ('time','length','volume','temperature','mass','piece')"
    drop_query = "DROP TYPE unit_type"
    execute(create_query, drop_query)

    alter table(:units) do
      add :type, :unit_type
    end
  end
end
