class FoodsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @foods = @user.foods.all
  end

  def new
    @food = Food.new
  end

  def create
    @user = User.find(params[:user_id])
    @new_food = @user.foods.new(food_params)
    if @new_food.save
      redirect_to user_foods_path, notice: 'succeded'
    else
      render :new
    end
  end

  def destroy
    @food = Food.find_by(id: params[:id])
    if @food.destroy
      redirect_to user_foods_path, notice: 'succeded'
    else
      flash.now[:notice] = 'error'
    end
  end

  def food_params
    params.require(:data).permit(:name, :measurement_unit, :price, :quantity)
  end
end
