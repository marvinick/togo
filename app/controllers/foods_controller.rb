class FoodsController < ApplicationController
  before_action :set_food, only:[:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @foods = Food.all
    @instagram = Instagram.user_recent_media("415164868", {:count => 50})
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
    redirect_to foods_path
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :content, :gluten, :image, :resource, category_ids: [])
  end
end