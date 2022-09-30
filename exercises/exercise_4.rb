require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey_store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

whistler_store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown_store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |store|
  puts store.name, store.annual_revenue
}

@womens_stores_under_a_milli = Store.where(womens_apparel: true).where(annual_revenue: ..1000000)

@womens_stores_under_a_milli.each { |store|
  puts store.name, store.annual_revenue
}