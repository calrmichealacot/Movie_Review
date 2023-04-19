# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do
  user = User.create!(email: Faker::Internet.email, password: 'qwer4321', password_confirmation: "qwer4321")
  puts "create user id: #{user.id}, email: #{user.email}"
end

30.times do |i|
  puts "start create #{i} post"
  post = Post.create(title:Faker::Lorem.sentence, blurb:Faker::Lorem.paragraph, date_released:Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today) , country_of_origin:Faker::Lorem.paragraph, showing_starts:Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today) , showing_ends:Faker::Date.between_except(from: 1.year.ago, to: 1.year.from_now, excepted: Date.today)  , user: User.all.sample)

  (1..20).to_a.sample.times do
  Comment.create(content: Faker::Lorem.sentence, user: User.all.sample, post: post)
  end
  puts "finish #{i} post"
end