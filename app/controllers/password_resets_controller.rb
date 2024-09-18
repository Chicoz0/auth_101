class PasswordResetsController < ApplicationController

  before_action :authenticate_no_user!
  before_action :set_user_by_token, only: [:edit, :update]

# READ - form written in views
  def new 
  end

# CREATE - based on the form params
  def create 
    if(user = User.find_by(email: params[:email]))
      PasswordMailer.with(
        user: user,
        token: user.generate_token_for(:password_reset) #That's how to generate the token
      ).password_reset.deliver_later
    end
    redirect_to root_path, notice: "Check your email to reset your password."
  end

#for: when you click the link in the email, use the token and query the user before you do anything
  def edit
    
  end

  def update
    if @user.update(password_params)
      redirect_to new_session_path, notice: "Your password has been reset successfully. Please login."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user_by_token
    @user = User.find_by_token_for(:password_reset, params[:token]) #That's how to take the token and find the user by it
    redirect_to new_password_reset_path, alert: "Invalid token, please try again." unless @user.present?
  end

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end