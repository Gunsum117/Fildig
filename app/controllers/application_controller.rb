class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :success, :info, :warning, :danger

  def after_sign_in_path_for(resource)
    if current_user
		root_path
    elsif current_admin
    	admin_films_path
    end
  end

  def after_sign_up_path_for(resource)
  	if current_user
    	root_path
    elsif current_admin
    	admin_films_path
    end
  end

  def after_sign_out_path_for(resource)
  	root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end

end