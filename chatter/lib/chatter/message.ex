defmodule Chatter.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :message, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:name, :message])
    |> validate_required([:name, :message])
  end

  def recent_messages(limit \\ 10) do
    Chatter.Repo.all(Chatter.Message, limit: limit)
  end
end
