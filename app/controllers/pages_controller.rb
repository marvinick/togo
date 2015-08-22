class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @foods = Food.all
  end
end