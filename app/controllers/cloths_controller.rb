class ClothsController < ApplicationController


  def index
    @cloths = Cloth.all
  end

  def show
    @cloth = Cloth.find(params[:id])
    @user = @cloth.owner
  end

end
