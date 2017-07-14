# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#-----Destroy previous records
Person.new
puts "Destroying old records..."
Person.destroy_all
puts "Old records destroyed."

#-----Create Objects
20.times do
  Person.create(name: Faker::Name.name,
                position: Faker::Job.title)
end
15.times do
  Person.first.employees << Person.all.sample(1) rescue ActiveRecord::RecordInvalid
  Person.first.managers << Person.all.sample(1) rescue ActiveRecord::RecordInvalid
end

puts '15 employees created and 15 managers created.'
