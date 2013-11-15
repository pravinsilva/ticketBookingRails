class SigninsController < ApplicationController
   def sign_in
    #@customer = Customer.new
  end

    def login
   emailid = params[:sitecustomer][:email]
    pwd = params[:sitecustomer][:password]
    
    sitecustomer = Sitecustomer.find_by_email_and_password(emailid,pwd)
   

    if sitecustomer
      customer = Customer.find_by_email(emailid) 
      session[:customer_id] = customer.id
     
      #render :action => "a"
      if customer.email=="admin"
        render :action => "admin_page"
      else
       redirect_to :root 
      end
      
    else
      flash.now[:error] = 'Unknown user. Please check your email id and password.'
      render :action => "invalidsignin"
    end

  end
 
 def admin_page
   @events=Event.all
   @shows=Show.all
 end
 
end
