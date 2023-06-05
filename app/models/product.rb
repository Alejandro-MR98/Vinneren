class Product < ApplicationRecord
  validates :product_name, presence: true
  validates :material_number,presence: true
  validates :stock,presence: true

  belongs_to :sup_sub_category
end
