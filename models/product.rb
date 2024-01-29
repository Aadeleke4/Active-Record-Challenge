class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.


  belongs_to :category

  # Validation to ensure all non-foreign key, id, or datetime columns are filled out before saving
  validates_presence_of :name, :price, :stock_quantity

   # Validation to ensure unique product names longer than 3 characters
   validates :name, presence: true, uniqueness: true, length: { minimum: 4 }

   

end