class OffersController < ApplicationController

  def index
    if params[:query].present?
      sql_query = <<~SQL
        offers.title @@ :query
        OR offers.description @@ :query
      SQL
      @offers = Offer.where(sql_query, query: "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

    def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to offer_path(@offer)
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
