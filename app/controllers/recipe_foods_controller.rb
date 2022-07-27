class RecipeFoodsController < ApplicationController
  def index
    @foods = Food.all

  def public_recipes
    @recipes = Recipe.where(public: true)
  end

  def new
    @recipe_food = RecipeFood.new
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @recipe = Recipe.find(params[:recipe_id])
     @recipe_food =  @recipe.recipe_foods.new(
      recipe_id: @recipe.id,
      food_id: recipe_food_params[:food_id],
      quantity: recipe_food_params[:quantity]
    )

    if @recipe_food.save
      puts 'Success!'
    else
      render :new, alert: 'Error occured!'
    end
  end

  def destroy
    # this is the function of destroy
  end
  def recipe_food_params
    params.require(:data).permit(:quantity,:food_id)
  end
end
end