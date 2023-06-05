class SupSubCategory < ApplicationRecord
  validates :name, presence: true
  validates :number,presence: true, uniqueness: true
  belongs_to :sub_category
  has_many :products, dependent: :destroy
end
