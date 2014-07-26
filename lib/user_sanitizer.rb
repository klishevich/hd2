UserSanitizer < Devise::ParameterSanitizer
	private
	def sign_up
	    default_params.permit(:email, :password,  :password_confirmation, :current_password, offers_attributes: [:id, :city])
	end
end