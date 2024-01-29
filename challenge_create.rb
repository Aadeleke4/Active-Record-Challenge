# challenge_create.rb

require_relative 'ar'
require_relative 'models/product'

# Create three new products using different ways to create AR objects
product1 = Product.create(name: 'Chair', price: 15, stock_quantity: 20)
product2 = Product.new(name: 'Table', price: 25, stock_quantity: 30)
product2.save
product3 = Product.new
product3.name = 'Desk'
product3.price = 12
product3.stock_quantity = 10
product3.save!

# Attempt to create a Product object missing required columns
invalid_product = Product.create(name: 'Sofa')  # Missing price and stock_quantity
puts "Invalid product errors: #{invalid_product.errors.full_messages.join(', ')}"
