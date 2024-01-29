require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

# Use the Product class to find any product
product = Product.first

# Inspect the Product object
puts product.inspect

# Total number of products
total_products = Product.count
puts "Total number of products: #{total_products}"

# Names of all products above $10 with names that begin with the letter C
products_above_10_c = Product.where("price > 10 AND name LIKE 'C%'")
puts "Products above $10 with names starting with 'C':"
products_above_10_c.each { |product| puts product.name }

# Total number of products with low stock quantity (less than 5 in stock)
low_stock_products = Product.where("stock_quantity < 5").count
puts "Total number of products with low stock quantity: #{low_stock_products}"

