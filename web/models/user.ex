defmodule Discuss.User do
  use Discuss.Web, :model

  # Two things have to define
  # 1. schema
  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string

    timestamps()
  end
  # 2. changeset function
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end
