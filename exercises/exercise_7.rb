require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter a store name:"
store_name = gets.chomp

# Create a new store with the given name
store = Store.new(name: store_name)

# Attempt to save the store
if store.save
  puts "Store was successfully created!"
else
  # Display error messages if save was unsuccessful
  puts "Error! Store could not be created due to the following reasons:"
  store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
end
