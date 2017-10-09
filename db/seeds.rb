# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Article.delete_all
Image.delete_all
Album.delete_all

(1..10).each do |user_num|
  user = User.create!(name: Faker::Name.name, email: "baotuan0.#{user_num}@gmail.com", password_digest: "123")

  (1..10).each do |article_num|
    article = user.articles.create!(title: Faker::Pokemon.name, body: Faker::Lorem.paragraph(10))
  end
end

Album.create!(id: 1, title: 'Scenery', cover: 'albums/scenery/1.jpg', total_view: 20)
Album.create!(id: 2, title: 'Pets', cover: 'albums/pets/1.jpg', total_view: 28)
Album.create!(id: 3, title: 'This is my title3', cover: 'albums/pets/1.jpg', total_view: 28)
Album.create!(id: 4, title: 'This is my title4', cover: 'albums/pets/1.jpg', total_view: 28)


Image.create!(id: 1,  album_id: 1, img_title: "Mountain", link: "../images/albums/scenery/5.jpg", view: 5)
Image.create!(id: 2,  album_id: 1, img_title: "Beautiful place", link: "../images/albums/scenery/6.jpg", view: 5)
Image.create!(id: 3,  album_id: 1, img_title: "Dark night", link: "../images/albums/scenery/7.jpg", view: 5)
Image.create!(id: 4,  album_id: 1, img_title: "Tunnel through the mountains", link: "../images/albums/scenery/8.jpg", view: 5)

Image.create!(id: 5,  album_id: 2, img_title: "A Dog is a dog", link: "../images/albums/pets/1.jpg", view: 5)
Image.create!(id: 6,  album_id: 2, img_title: "A Cat is not a dog", link: "../images/albums/pets/2.jpg", view: 5)
Image.create!(id: 7,  album_id: 2, img_title: "Cutiest dog", link: "../images/albums/pets/3.jpg", view: 5)
Image.create!(id: 8,  album_id: 2, img_title: "Friends", link: "../images/albums/pets/4.jpg", view: 5)
