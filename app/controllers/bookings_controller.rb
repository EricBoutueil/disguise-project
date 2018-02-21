class BookingsController < ApplicationController
  def show
     @booking = Booking.find(params[:id])
     @cloth = @booking.cloth
  end
end
