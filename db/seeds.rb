# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  article = Article.create(title: Faker::Lorem.sentence, text: Faker::Lorem.paragraph)
  rand(10).times do
    article.comments.create(commenter: Faker::Name.name, body: Faker::Lorem.paragraph)
  end
end