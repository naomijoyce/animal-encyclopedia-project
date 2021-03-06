class ApplicationController < ActionController::Base
  helper_method :current_user

  # def not_found
  #   raise ActionController::RoutingError.new("Not Found")
  # end
  def current_user
    @user = User.find_by(id: session[:user_id])
  end

  def logging_in
    session[:user_id] = @user.id
  end

  def logged_in
    !!session[:user_id]
  end

  def logging_out
    session[:user_id] = nil
  end

  def authenticate
    redirect_to new_session_path unless logged_in
  end

end
