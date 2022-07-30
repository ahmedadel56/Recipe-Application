class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  validates :name, :measurement_unit, presence: true
  validates :price, presence: true, numericality: { greater_than: 0, only_float: true }
end
