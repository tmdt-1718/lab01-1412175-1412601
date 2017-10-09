# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Article.delete_all

(1..10).each do |user_num|
  user = User.create!(name: Faker::Name.name, email: "baotuan0.#{user_num}@gmail.com", password_digest: "123")

  (1..10).each do |article_num|
    article = user.articles.create!(title: Faker::Pokemon.name, body: Faker::Lorem.paragraph(10))
  end
end
