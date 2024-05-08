class ApplicationController < ActionController::Base
  def set_current_user
    cookies[:user_id] = params[:user_id]
    redirect_to root_path
  end

  def get_current_user
    @current_user = User.find_by(id: cookies[:user_id]) || User.last
  end

  helper_method :get_current_user
end
