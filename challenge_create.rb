require_relative 'ar'
require_relative 'models/product'

# Create three new products using different ways to create AR objects
product1 = Product.create(name: 'Xiomi', price: 99, stock_quantity: 67)
product2 = Product.new(name: 'Umidigi', price: 250, stock_quantity: 32)
product2.save
product3 = Product.new
product3.name = 'Firetab'
product3.price = 22
product3.stock_quantity = 19
product3.save!

# Attempt to create a Product object missing required columns
invalid_product = Product.create(name: 'iphone')  # Missing price and stock_quantity
puts "Invalid product errors: #{invalid_product.errors.full_messages.join(', ')}"
