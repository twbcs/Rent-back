class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protect_from_forgery with: :exception

  protected

  def layout_by_resource
    if devise_controller?
      "dashboard"
    else
      "application"
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def after_sign_in_path_for(resource)
    sign_in_url = new_admin_session_url
    if request.referer == sign_in_url
      admin_intros_path
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
end
