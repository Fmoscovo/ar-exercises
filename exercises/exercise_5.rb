require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Calculate total revenue for the entire company (all stores)
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for all stores: $#{total_revenue}"

# Calculate the average annual revenue for all stores
average_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for all stores: $#{average_revenue}"

# Determine how many stores are generating more than $1M in annual revenue
high_revenue_stores_count = Store.where("annual_revenue > ?", 1000000).count
puts "#{high_revenue_stores_count} stores are generating more than $1M in annual revenue."
