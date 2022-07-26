class RecipesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @recipes = @user.recipes.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    # I am just going to put comment here
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def public_recipes
    @recipes = Recipe.where(public: true)
  end

  def destroy
    @post = Recipe.find(params[:id])
    @post.destroy
    flash[:notice] = 'Recipe removed successfully'
    redirect_to '/recipes'
  end
end
