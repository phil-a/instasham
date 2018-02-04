defmodule InstashamWeb.Resolvers.Posts do
  def photos(_, _, _) do
    {:ok, Instasham.Posts.list_photos}
  end
end