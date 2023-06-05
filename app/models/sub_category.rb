class SubCategory < ApplicationRecord
  validates :name, presence: true
  validates :number,presence: true, uniqueness: true
  belongs_to :category
  has_many :sup_sub_categories,dependent: :destroy
end
