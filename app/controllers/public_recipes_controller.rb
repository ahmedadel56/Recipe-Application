class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.includes([:user]).where(public: true).order(created_at: :desc)
  end

  def show
    @recipe = Recipe.includes([:user]).find(params[:id])
  end
end

