class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :destroy]

  def index
    @locations = Location.all
  end

  def show

  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path
    else
      render "new"
    end
  end

  def destroy
    if @location.destroy
      render text: "Successfully deleted a location!", status: 200
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:address1, :city, :state, :zipcode, :latitude, :longitude, :user_id)
  end

end
