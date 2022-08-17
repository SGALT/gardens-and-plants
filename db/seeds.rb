puts "Cleaninng DB"

Garden.destroy_all

puts 'DB cleaned'

puts "Creation of the first garden"

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

puts "first garden created"
puts "Creation of the second garden"

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

puts "second garden created"
