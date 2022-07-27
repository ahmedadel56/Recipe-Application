class RecipeFoodsController < ApplicationController
  def index
    @foods = Food.all
  end
  def public_recipes
    @recipes = Recipe.where(public: true)
  end

  def new
    @foods = Food.all
    @recipe_food = RecipeFood.new
  end

  def show
    # @recipes = Recipe.find(params[:id])
  end

  def create
     @recipe_food =  RecipeFood.new(
      recipe_id: params[:recipe_id],
      food_id: recipe_food_params[:food_id],
      quantity: recipe_food_params[:quantity]
    )

    if @recipe_food.save
      flash[:notice] = 'Food saved successfully'
      redirect_to user_recipes_path
    else
      flash[:alert] = 'Food not saved'
    end
  end

  def destroy
    # this is the function of destroy
  end
  def recipe_food_params
    params.require(:data).permit(:food_id, :quantity)
  end
end
