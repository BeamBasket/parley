defmodule SquareArrow.Repo do
  use Ecto.Repo,
    otp_app: :square_arrow,
    adapter: Ecto.Adapters.Postgres
end
