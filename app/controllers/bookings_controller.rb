class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @costume = House.find(params[:house_id])

    @booking.house = @house
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render "houses/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on, :message)
  end
end


