class BookingsController < ApplicationController
  before_action :set_offer, only: [:new, :create, :show]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
      @booking.offer = @offer
      @booking.user = current_user
      if @booking.save
        redirect_to root_path
      else
        render :new
      end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_offer
    @offer = Offer.find(params[:offer_id])
  end

end
