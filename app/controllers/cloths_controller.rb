class ClothsController < ApplicationController


  def index
    @cloths = Cloth.all
  end

end
