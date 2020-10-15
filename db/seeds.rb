# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Scratcher.destroy_all

20.times {
    Scratcher.create(
        item_name: Faker::GreekPhilosophers.name,
        item_description: Faker::GreekPhilosophers.name,
        item_size: "Small",
        item_cost: Faker::Number.decimal(l_digits: 2)
    )
}

20.times {
    Scratcher.create(
        item_name: Faker::GreekPhilosophers.name,
        item_description: Faker::GreekPhilosophers.name,
        item_size: "Medium",
        item_cost: Faker::Number.decimal(l_digits: 2)
    )
}

20.times {
    Scratcher.create(
        item_name: Faker::GreekPhilosophers.name,
        item_description: Faker::GreekPhilosophers.name,
        item_size: "Large",
        item_cost: Faker::Number.decimal(l_digits: 2)
    )
}