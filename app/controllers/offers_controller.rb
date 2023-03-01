class OffersController < ApplicationController

  def index
    @offers = Offer.where
  end

  def show
    @offer = Offer.find(params[:id])
  end

    def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to offers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @offer = Offer.new
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price, :location, :photo)
  end

end
