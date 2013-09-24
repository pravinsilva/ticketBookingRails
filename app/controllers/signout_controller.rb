class SignoutController < ApplicationController
  def sign_out
    session[:customer_id] = nil
    flash[:notice] = "You have been signed out."
    redirect_to :root
  end
end
