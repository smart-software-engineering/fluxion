defmodule Fluxion.Repo do
  use Ecto.Repo,
    otp_app: :fluxion,
    adapter: Ecto.Adapters.Postgres
end
