class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_start_time
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :last_announcement

  def last_announcement
    if DevPost.last
      @announcement = DevPost.last
    end
  end

  def set_start_time
    @start_time = Time.now.usec
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit :username, :email, :password, :password_confirmation
      end
    end
end
