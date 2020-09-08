class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone_number, :profile_image, user_instruments_attributes: [:instrument_id, :skill_level] ])
  end

  def default_url_options
    { host: ENV["https://www.music-connects.us/"] || "localhost:3000" }
  end
end
