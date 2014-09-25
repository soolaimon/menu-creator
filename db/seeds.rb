# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_items(id)
  10.times do
    MenuItem.create(name: Faker::Lorem.word, price: Random.rand(11), description: Faker::Lorem.sentence, vegetarian: [true, false].sample, menu_id: id)
  end
end

menus = ["Texas Roadhouse", "Chunga's", "Olive Garden", "Spitz", "Cafe Rio", "Cafe Zupas",
"Costa Vida", "JDawgs", "Cubby's", "Smash Burger", "In'N'Out Burger", "Apollo Burger", "China Garden"]

menus.each do |restaurant|
  menu = Menu.create(name: restaurant, owner: ["Dave", "Ken", "Jeremy", "Carrie"].sample)
  make_items(menu.id)
end