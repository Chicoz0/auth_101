class ApplicationController < ActionController::Base
  allow_browser versions: :modern   # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.


  private

  def authenticate_no_user!
    redirect_to root_path, alert: "You are already logged in, can't proceed action." unless !user_signed_in?
  end

  def authenticate_user!
    redirect_to root_path, alert: "You must be logged in to do that." unless user_signed_in?
  end

  def current_user
    Current.user ||= authenticate_user_from_session
  end
  helper_method :current_user #makes "current_user" avaliable in views

  def authenticate_user_from_session
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    current_user.present?
  end

  helper_method :user_signed_in? #makes "user_signed_in?" avaliable in views

  def login(user)
    Current.user = user
    reset_session
    session[:user_id] = user.id
  end

  def logout(user)
    Current.user = nil
    reset_session
  end
end
