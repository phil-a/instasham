defmodule InstashamWeb.Schema do
  use Absinthe.Schema

  alias InstashamWeb.Resolvers

  import_types __MODULE__.PostsTypes
  import_types __MODULE__.AccountsTypes

  query do
    @desc "Get list of photos"
    field :photos, list_of(:photo) do
      resolve &Resolvers.Posts.photos/3
    end

    @desc "Get photo by id"
    field :photo, :photo do
      arg :id, non_null(:id)
      resolve &Resolvers.Posts.photo/3
    end
  end

  mutation do
    @desc "Login as a user"
    field :login, :user_session do
      arg :token, :string
      arg :provider, type: :provider
      resolve &Resolvers.Accounts.login/3
    end
  end
end