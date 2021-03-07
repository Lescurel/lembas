defmodule Lembas.Repo do
  use Ecto.Repo,
    otp_app: :lembas,
    adapter: Ecto.Adapters.Postgres
end
