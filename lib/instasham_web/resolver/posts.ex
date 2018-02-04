defmodule InstashamWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, Instasham.Posts.list_photos}
  end

  def photo(_, %{id: id}, _) do
    {:ok, Instasham.Posts.get_photo!(id)}
  end
end