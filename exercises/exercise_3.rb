require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Fetch the third store
@store3 = Store.find_by(id: 3)

# Delete the third store
@store3.destroy

# Verify the store has been deleted by counting the stores
puts Store.count
