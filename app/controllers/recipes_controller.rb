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
      redirect_to user_recipes_path, notice: 'succeded'
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @recipe = @user.recipes.find(params[:id])
    @recipe_foods = @recipe.recipe_foods.includes([:food])
  end

  def destroy
    @post = Recipe.find(params[:id])
    @post.destroy
    flash[:notice] = 'Recipe removed successfully'
    redirect_to '/recipes'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time,
                                   :cooking_time, :description, :public)
  end
end
