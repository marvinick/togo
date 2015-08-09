class PagesController < ApplicationController
  def home
     @instagram = Instagram.user_recent_media("415164868", {:count => 50})
     @food = Food.new
  end
end