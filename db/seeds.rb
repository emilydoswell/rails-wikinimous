# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "starting seed..."

10.times do |article|
  article = Article.new(
    title: Faker::TvShows::FamilyGuy.location,
    content: Faker::TvShows::FamilyGuy.quote
  )
  article.save
end

puts "ending seed..."