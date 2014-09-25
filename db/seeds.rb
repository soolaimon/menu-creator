# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Menu.create(name: "Texas Roadhouse", owner: "Dave")

MenuItem.create(name: "Ribeye", price: 20.00, description: "A 20 oz. cut of our most flavorful steak served with our special peppercorn sauce and two sides (1110 cal.)", menu_id: 1)
MenuItem.create(name: "Salad", price: 7.00, description: "Crisp hearts of romaine, fresh parmesan cheese, and made-from-scratch croutons, tossed with our zesty Caesar dressing (770 cal.)", vegetarian: true, menu_id: 1)

Menu.create(name: "Chunga's", owner: "Dave")

100.times do
  menu = Menu.create(name: Faker::Company.name, owner: Faker::Name.name)
  10.times do
    MenuItem.create(name: Faker::Lorem.word, price: Random.rand(11), description: Faker::Lorem.sentence, vegetarian: [true, false].sample, menu_id: menu.id)
  end
end