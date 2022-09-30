require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { in: 40...200 }
  validates :store_id, presence: true
end

class Store
  before_destroy :employee_check

  validates :name, length: { minimum: 3 }
 
  private
  def employee_check
    if !self.employees.empty?
      throw :abort
    end
  end

end

puts "Give me a store name:"
@store_name = gets.chomp

failing_store = Store.create(name: @store_name)