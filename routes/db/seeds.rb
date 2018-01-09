# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Landmark.create(name: "landmark1", history: "1- this is the history of this landmark. it's long and glorious and worthy of your attention.")
  Landmark.create(name: "landmark2", history: "2- this is the history of this landmark. it's long and glorious and worthy of your attention.")
  Landmark.create(name: "landmark3", history: "3- this is the history of this landmark. it's long and glorious and worthy of your attention.")
  Landmark.create(name: "landmark4", history: "4- this is the history of this landmark. it's long and glorious and worthy of your attention.")
  Landmark.create(name: "landmark5", history: "5- this is the history of this landmark. it's long and glorious and worthy of your attention.")
  Category.create(name: "historical")
  Category.create(name: "literary")
  Category.create(name: "art")
  Category.create(name: "political")

counter = 1
Item.all.each do |item|
  item.category_id = counter
  item.save
  counter += 1
end

new_cart = Cart.new

User.create(:email => "email@email.com", :password => "123456789")

