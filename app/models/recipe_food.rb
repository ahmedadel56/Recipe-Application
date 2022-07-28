class RecipeFood < ApplicationRecord
  before_action :authenticate_user!
  belongs_to :food
  belongs_to :recipe

  def value_result
    quantity * food.price
  end
end
