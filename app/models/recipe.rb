class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods

  validates :name, presence: true
  validates :preparation_time, :cooking_time, presence: true, numericality: { greater_than: 0, only_float: true }
  validates :description, presence: true
  validates :public, inclusion: { in: [true, false] }
end