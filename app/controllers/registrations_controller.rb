class RegistrationsController < Devise::RegistrationsController
  def new_offer
    @user = User.new
    @user.offers.build    
  end

  def new_demand
    @user = User.new
    @user.demands.build    
  end  

end 