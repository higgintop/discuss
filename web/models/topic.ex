defmodule Discuss.Topic do
  use Discuss.Web, :model

  # Model schema - inform phoenix about what is going on in database
  schema "topics" do
    field :title, :string
  end

  # Changeset - for validations
  # struct = a hash representing a record we want to save in the db
  # params = hash of props we want to update the struct with
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end
