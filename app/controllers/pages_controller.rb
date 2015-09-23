class PagesController < ApplicationController

  def index
  end

  def home
  end

  def dashboard
    @user = current_user
    @foods = current_user.foods
  end
end