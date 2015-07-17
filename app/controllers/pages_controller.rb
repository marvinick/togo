class PagesController < ApplicationController
  def home
     @instagram = Instagram.user_recent_media("415164868", {:count => 1})
  end
end