class HousesController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
    @booking = Booking.new # On crée un objet vide pour simple_form
  end
end
