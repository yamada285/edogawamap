class MapsController < ApplicationController

  def new
    @map = Map.new
  end

  def index
    @maps = Map.all
    @spot = Map.find_by(id: 5)
    gon.lat = @spot.latitude
    gon.lng = @spot.longitude
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to ("/index")
    else
      @maps = Map.all
      render 'maps/index'
    end
  end

  private

  def map_params
    params.require(:map).permit(:address, :title, :comment)
  end

end