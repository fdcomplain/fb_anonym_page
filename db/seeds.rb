# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |number|
  fake_content = Faker::Lorem.paragraphs(3, true).join("\n")
  fake_published = number < 5 ? true : false
  Post.create!(
    content: fake_content,
    published: fake_published)
end
