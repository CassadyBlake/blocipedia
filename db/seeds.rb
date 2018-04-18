# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::TwinPeaks.location
  )
end
users = User.all

15.times do
  Wiki.create!(
    title: Faker::TwinPeaks.location,
    body: Faker::TwinPeaks.quote,
    user: users.sample
  )
end

admin = User.create!(
  email: 'admin@gmail.com',
  password: 'abc123',
  role: 'admin'
)

puts "Seed Completed"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
