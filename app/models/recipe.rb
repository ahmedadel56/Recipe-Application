class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  def total_price
    total = 0
    recipe_foods.includes([:food]).each do |recipe_food|
      total += recipe_food.food.price * recipe_food.quantity
    end
    total
  end

  validates :name, presence: true
  validates :preparation_time, :cooking_time, presence: true, numericality: { greater_than: 0, only_float: true }
  validates :description, presence: true
  validates :public, inclusion: { in: [true, false] }
end
