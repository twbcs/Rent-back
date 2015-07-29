class Admin::AdminController < ApplicationController
  before_action :login_in
  layout 'admin'

  def login_in
    redirect_to new_admin_session_url unless admin_signed_in?
  end
end
