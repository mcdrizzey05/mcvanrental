class BookingsController < ApplicationController
  before_action :set_offer, only: [:new, :create, :show]

  def index
    # @offers = current_user.offer
    @bookings = current_user.bookings
    @bookings_owner = current_user.bookings_as_owner
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
        redirect_to bookings_path
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
