class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter { |c| Authorization.current_user = c.current_user } 
  
  helper_method :current_user  
    
  #private  
  def current_user_session  
    return @current_user_session if defined?(@current_user_session)  
    @current_user_session = UserSession.find  
  end  
    
  def current_user  
    @current_user = current_user_session && current_user_session.record  
end  

  def permission_denied  
    flash[:error] = "Sorry, you not allowed to access that page."  
    redirect_to root_url  
 end  


end
