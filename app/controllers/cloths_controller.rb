class ClothsController < ApplicationController

  def index
    @cloths = Cloth.all
    if (params[:category])
      @cloths = @cloths.where(category: params[:category])
    end
    if (params[:size])
      @cloths = @cloths.where(size: params[:size])
    end
  end

  def new
    @cloth = Cloth.new
  end
  def show
    @cloth = Cloth.find(params[:id])
    @user = @cloth.owner
  end
end
