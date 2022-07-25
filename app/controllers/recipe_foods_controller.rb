class RecipeFoodsController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def public_recipes
    @recipes = Recipe.where(public: true)
  end

  def new
    @recipe = Recipe.new
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def create
    # I am just going to put comment here
  end

  def destroy
    # this is the function of destroy
  end
end
