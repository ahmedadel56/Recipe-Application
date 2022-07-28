class RecipeFoodsController < ApplicationController
  before_action :authenticate_user!
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
    @recipe_food = RecipeFood.find(params[:id])
  end

  def create
    @recipe_food = RecipeFood.new(
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
    @recipe_food = RecipeFood.find(params[:id])
    @recipe_food.destroy
    flash[:notice] = 'Recipe removed successfully'
    redirect_to user_recipes_path
  end
  def edit
    @foods = Food.all
    @recipe_food = RecipeFood.find(params[:id])   
  end
  def update
    @recipe_food = RecipeFood.find(params[:id])
    if @recipe_food.update(
      food_id: recipe_food_params[:food_id],
      quantity: recipe_food_params[:quantity]
    )   
      redirect_to user_recipes_path
    else
      flash[:alert] = 'Food not Updated'
    end
  end

  def recipe_food_params
    params.require(:data).permit(:food_id, :quantity)
  end
end
