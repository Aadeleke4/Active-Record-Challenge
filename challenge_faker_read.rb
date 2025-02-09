# challenge_faker_read.rb

require_relative 'ar'
require_relative 'models/category'
require_relative 'models/product'

# Find all categories in the database
categories = Category.all

# Display category names and associated products (name and price)
categories.each do |category|
  puts "Category: #{category.name}"

  category.products.each do |product|
    puts "  - Product: #{product.name}, Price: #{product.price}"
  end

  puts "\n"
end
