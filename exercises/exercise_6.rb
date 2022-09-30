require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee

  belongs_to :store

end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Karma", last_name: "Pajuaar", hourly_rate: 40)
@store1.employees.create(first_name: "Dani", last_name: "Hacker", hourly_rate: 400)

@store2.employees.create(first_name: "Jesse", last_name: "Pajuaar", hourly_rate: 75)
@store2.employees.create(first_name: "Theo", last_name: "McKim", hourly_rate: 55)