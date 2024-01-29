# challenge_faker.rb

require_relative 'ar'
require_relative 'models/category'
require_relative 'models/product'

# Use Faker to generate 10 new categories and 10 products for each category
10.times do
  category = Category.create(name: Faker::Commerce.unique.department)

  10.times do
    product = Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 1..100.0),
      stock_quantity: Faker::Number.between(from: 1, to: 100),
      category: category
    )
  end
end
