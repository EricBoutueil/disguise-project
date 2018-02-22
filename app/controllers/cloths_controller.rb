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
  def create
    @cloth = Cloth.new(cloth_params)
    @cloth.owner = current_user
    @cloth.owner.owner = true
    if @cloth.save
      redirect_to cloth_path(@cloth)
    else
      render :new
    end
  end

private

  # Never trust parameters from the scary internet, only allow the white list through.
  def cloth_params
    params.require(:cloth).permit(:main_picture, :title, :category, :size, :description, :price_per_day )
  end
end
