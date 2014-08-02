class StaticPagesController < ApplicationController
  def home
  	@demands = Demand.order('created_at desc')
  	@offers = Offer.order('created_at desc')
  end
end
