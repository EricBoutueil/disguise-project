class BookingsController < ApplicationController


  def index
    @booking = Booking.all
    @booking = @booking.where(customer_id: params[:customer_id])
  end

  def show
     @booking = Booking.find(params[:id])
     @cloth = @booking.cloth
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    @cloth = Cloth.find(params[:cloth_id])
    @booking.cloth = @cloth
    @booking.total_booking_price = (@booking.end_date - @booking.start_date)* @cloth.price_per_day
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'cloths/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
