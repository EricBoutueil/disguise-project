class ClothsController < ApplicationController

  def index
    @cloths = Cloth.all
  end

  def new
    @cloth = Cloth.new
  end
end
