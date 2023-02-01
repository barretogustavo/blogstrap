class ApplicationController < ActionController::Base
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to user_session_path, :alert => 'You need to sign in or sign up before continuing.'
    end
  end

end
