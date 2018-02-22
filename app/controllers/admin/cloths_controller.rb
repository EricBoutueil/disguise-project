class Admin::ClothsController < ApplicationController
  def index
    @cloths = current_user.cloths
  end
end
