class ClothsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

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

  def create
    @cloth = Cloth.new(cloth_params)
    @cloth.owner = current_user
    if @cloth.save
      @cloth.owner.owner = true
      redirect_to admin_cloths_path
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
