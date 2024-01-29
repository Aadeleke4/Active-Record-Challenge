# challenge_delete.rb

require_relative 'ar'
require_relative 'models/product'

# Find one of the products you created in challenge_create.rb and delete it from the database
product_to_delete = Product.find_by(name: 'Chair')
product_to_delete.destroy if product_to_delete

# Verify if all criteria have been met
# - Created 3 products using different ways
# - Attempted to create an invalid product and displayed errors
# - Updated products with stock quantity greater than 40
# - Deleted a product created in challenge_create.rb
