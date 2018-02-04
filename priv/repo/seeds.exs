alias Instasham.{Posts, Repo}

photos_list = [
  "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/271955/pexels-photo-271955.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/257532/pexels-photo-257532.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/127028/pexels-photo-127028.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/96938/pexels-photo-96938.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/290164/pexels-photo-290164.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/774731/pexels-photo-774731.jpeg?h=350&auto=compress&cs=tinysrgb",
  "https://images.pexels.com/photos/209037/pexels-photo-209037.jpeg?h=350&auto=compress&cs=tinysrgb"
]
photos_last_index = length(photos_list) - 1

for i <- 0..photos_last_index do
  photo = %{
    image_url: Enum.at(photos_list, i),
    caption: Faker.Lorem.Shakespeare.hamlet
  }

  %Posts.Photo{}
  |> Posts.Photo.changeset(photo)
  |> Repo.insert!
end