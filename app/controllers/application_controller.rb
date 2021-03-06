class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
   helper_method :customer_uid

  def current_user
    # Note: we want to use "find_by_id" because it's OK to return a nil.
    # If we were to use User.find, it would throw an exception if the user can't be found.
    @current_user ||= Customer.find_by_id(session[:customer_id]) if session[:customer_id]
  end
  
  def customer_uid
    @customer_uid ||=Socialcustomer.find_by_uid(session[:customer_uid]) if session[:customer_uid]
  end
end
