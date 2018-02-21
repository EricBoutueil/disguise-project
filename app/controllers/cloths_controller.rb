class ClothsController < ApplicationController

  def index
    @cloths = Cloth.all
  end
  def new
    @cloth = Cloth.new
  end
  def show
    @cloth = Cloth.find(params[:id])
    @user = @cloth.owner
    @booking = Booking.new
  end
end
