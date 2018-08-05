class BookingsController < ApplicationController
skip_before_action :authenticate_user!, only: :index

  def index
    @bookings = current_user.bookings
    @bookings = Booking.all
    @rooms = current_user.all_rooms
# tri par dates
    @ordered_bookings = @bookings.sort{|a,b| b.date <=> a.date}

    @yearly_grouped_bookings = @ordered_bookings.group_by{|booking| booking.date.year }

  end

  def show
    @booking = Booking.find(params[:id])
    #@ordered_bookings = @bookings.sort{|a,b| b.date <=> a.date}
  end

  def create
    @house = House.find(params[:house_id])
    @booking = Booking.new(booking_params)

    @booking.house = @house
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path(@house)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    redirect_to bookings_path(@house)
  end

  def destroy
    # @booking = Booking.find(params[:id])
    # @booking.destroy

    Booking.destroy(params[:id])
    redirect_to bookings_path
  end


  private

  def booking_params
    params.require(:booking).permit(:start_on, :end_on)
  end
end

