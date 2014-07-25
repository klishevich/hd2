class OffersController < ApplicationController
  def index
    @offers=Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      flash[:success] = t(:ok)
      redirect_to @offer
    else
      render 'new'
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit
  	@offer=Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update_attributes(params[:offer])
      flash[:success] = t(:ok)
      redirect_to @offer
    else
      render 'edit'
    end
  end	

  private

  def offer_params
    params.require(:offer).permit(:city, :duration, :description, :email)
  end  
end
