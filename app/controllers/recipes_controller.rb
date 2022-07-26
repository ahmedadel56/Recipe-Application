class RecipesController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(params[:user_id])
    @recipes = @user.recipes.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @user = User.find(params[:user_id])
    @new_recipe = @user.recipes.new(recipe_params)
    if @new_recipe.save
      redirect_to user_recipe_path(user_id: current_user.id, id: @new_recipe.id), notice: 'succeded'
    else
      render :new
    end
  end

  def shopping_list
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.find(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.includes([:food])
    @total = 0
    @recipe_foods.each { |recipe_food| @total += recipe_food.value_result }
  end

  def show
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.find(params[:id])
    @recipe_foods = @recipe.recipe_foods.includes([:food])
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = 'Recipe removed successfully'
    redirect_to '/recipes'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time,
                                   :cooking_time, :description, :public)
  end
end
