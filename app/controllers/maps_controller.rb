class MapsController < ApplicationController
  def index
    @map = Map.new
    @maps = Map.all
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to maps_url
    else
      @maps = Map.all
      render 'maps/index'
    end
  end

  private

  #ストロングパラメーター
  def map_params
    params.require(:map).permit(:address, :latitude, :longitude,:title, :comment)
  end
end
