class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    # I am just going to put comment here
  end

  def destroy
    # this is the function of destroy
  end
end
