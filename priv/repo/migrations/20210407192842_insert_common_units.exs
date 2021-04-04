defmodule MyApp.Repo.Migrations.InsertCommonUnits do
  use Ecto.Migration

  def change do
    insert_query = "INSERT INTO units (name, factor, \"offset\", type, inserted_at, updated_at)
    VALUES
    ('g', 1000, 0, 'mass',now(),now()),
    ('kg', 1, 0, 'mass',now(),now()),
    ('ml', 1000, 0, 'volume',now(),now()),
    ('cl', 100, 0, 'volume',now(),now()),
    ('dl', 10, 0, 'volume',now(),now()),
    ('L', 1, 0, 'volume',now(),now()),
    ('', 1, 0, 'piece',now(),now());"
    delete_query = "DELETE FROM units WHERE id<=7;"
    execute(insert_query, delete_query)
  end
end
