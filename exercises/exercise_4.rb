require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Add more stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Filter and display stores that carry men's apparel
mens_stores = Store.where(mens_apparel: true)

puts "Stores that carry men's apparel:"
mens_stores.each do |store|
  puts "Store name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Filter and display stores that carry women's apparel and have an annual revenue less than 1M
womens_stores = Store.where(womens_apparel: true, annual_revenue: 0...1000000)

puts "Stores that carry women's apparel and have an annual revenue less than 1M:"
womens_stores.each do |store|
  puts "Store name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
