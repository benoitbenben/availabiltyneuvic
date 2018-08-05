class GuestsController < ApplicationController
 before_action :authenticate_user!, only: [:index, :show]

  def index
    @guests = guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @booking = Booking.new # On crée un objet vide pour simple_form
  end
end


