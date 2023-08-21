require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Add some employees for store 1 (Burnaby)
@store1.employees.create(first_name: "Khaleesi", last_name: "Targaryen", hourly_rate: 60)
@store1.employees.create(first_name: "Tyrion", last_name: "Lannister", hourly_rate: 70)
@store1.employees.create(first_name: "Arya", last_name: "Stark", hourly_rate: 50)

# Add some employees for store 2 (Richmond)
@store2.employees.create(first_name: "Jon", last_name: "Snow", hourly_rate: 65)
@store2.employees.create(first_name: "Sansa", last_name: "Stark", hourly_rate: 55)
@store2.employees.create(first_name: "Cersei", last_name: "Lannister", hourly_rate: 75)

puts "Employees added for Store 1 and Store 2"
