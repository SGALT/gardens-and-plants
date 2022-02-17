puts "Cleaning database"

Garden.destroy_all if Rails.env.development?

puts "Create some gardens"

Garden.create!(
  name: "Jardin Public",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Garden.create!(
  name: "Jardin d'Eden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg",
)

puts "Job's done !"
