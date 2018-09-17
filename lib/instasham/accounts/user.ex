defmodule Instasham.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Instasham.Accounts.User


  schema "users" do
    field :avatar, :string
    field :email, :string
    field :facebook_id, :string
    field :first_name, :string
    field :last_name, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :avatar, :facebook_id, :email, :first_name, :last_name])
    |> validate_required([:avatar, :facebook_id, :email, :first_name, :last_name])
    |> unique_constraint(:email)
    |> unique_constraint(:facebook_id)
  end
end