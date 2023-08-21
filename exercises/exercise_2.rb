require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Retrieve the stores with annual revenue of 1M and above
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

high_revenue_stores = Store.where("annual_revenue >= 1000000")



# Display these stores
high_revenue_stores.each do |store|
  puts "Store name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
