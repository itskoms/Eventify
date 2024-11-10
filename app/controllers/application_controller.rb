class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= Guest.find(session[:guest_id]) if session[:guest_id]
  end

  def authenticate_user!
    redirect_to new_guest_session_path unless current_user
  end
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
    # private
  
    # def current_user
    #   # Fetch the current user from session (modify according to your login logic)
    #   @current_user ||= Guest.find(session[:guest_id]) if session[:guest_id]
    #   @current_user ||= Organizer.find(session[:organizer_id]) if session[:organizer_id]
    # end
  
    # def guest?
    #   current_user.is_a?(Guest)
    # end
  
    # def organizer?
    #   current_user.is_a?(Organizer)
    # end
end
