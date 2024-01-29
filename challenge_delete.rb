

require_relative 'ar'
require_relative 'models/product'

# Find one of the products you created in challenge_create.rb and delete it from the database
product_to_delete = Product.find_by(name: 'Umidigi')
product_to_delete.destroy if product_to_delete


