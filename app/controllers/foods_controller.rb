class FoodsController < ApplicationController
  before_action :set_food, only:[:show, :edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @food.update(food_params)
      redirect_to food_path
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :content, :gluten, category_ids: [])
  end
end