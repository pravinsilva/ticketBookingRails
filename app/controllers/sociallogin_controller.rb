class SocialloginController < ApplicationController
    def create
  socialcustomer = Socialcustomer.from_omniauth(env["omniauth.auth"])
  emailid=socialcustomer.email
  
  customer = Customer.find_by_email(emailid) 
  
  session[:customer_id] = customer.id
  session[:customer_uid] = socialcustomer.uid
  
  
  flash[:notice] = 'Welcome.'
     
 redirect_to :root 
  end

  def destroy
    session[:customer_id] = nil
    session[:customer_uid] = nil
    redirect_to root_url
  end
end
