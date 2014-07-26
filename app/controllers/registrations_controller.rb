class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
    @user.offers.build    
  end

end 