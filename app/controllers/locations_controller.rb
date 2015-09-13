class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 50, :order => 'distance')
    else
      @locations = Location.all
    end
  end

  def show
    respond_with(@location)
  end

  def new
    @location = Location.new
    respond_with(@location)
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    @location.save
    redirect_to locations_path
    # respond_with(@location)
  end

  def update
    @location.update(location_params)
    respond_with(@location)
  end

  def destroy
    @location.destroy
    respond_with(@location)
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:address, :state, :country, :zipcode, :latitude, :longitude)
    end
end
