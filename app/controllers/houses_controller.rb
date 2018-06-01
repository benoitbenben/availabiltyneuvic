class HousesController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR category ILIKE :query OR name ILIKE :query"
      @houses = House.where(sql_query, query: "%#{params[:query]}%")
    else
      @houses = House.all
    end
  end

  def show
    @house = House.find(params[:id])
    @booking = Booking.new # On crée un objet vide pour simple_form
  end
end
