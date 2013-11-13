class InvalidSigninController < ApplicationController
 def sign_in
    #@customer = Customer.new
  end

  def login
   email = params[:customer][:emailid]
    pwd = params[:customer][:password]
    
    customer = Customer.find_by_emailid_and_password(email,pwd)
   

    if customer 
      session[:customer_id] = customer.id
      flash[:notice] = 'Welcome.'
      #render :action => "a"
        redirect_to :root
    else
      flash.now[:error] = 'Unknown user. Please check your email id and password.'
      render :action => "invalidsignin"
    end

  end
end
