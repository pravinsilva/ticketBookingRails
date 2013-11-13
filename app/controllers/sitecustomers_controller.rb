class SitecustomersController < ApplicationController
    def new
    @sitecustomer=Sitecustomer.new
  end
  
  def create
   
    emailid=params[:sitecustomer][:email]
    @sitecustomer=Sitecustomer.new(:email => params[:sitecustomer][:email], :password => params[:sitecustomer][:password])
    if @sitecustomer.save
      @customer = Customer.new(:email => emailid)
      @customer.save
    end
    
   #for sending mail
   respond_to do |format|
      if @sitecustomer.save
       CustomerMailer.registration_confirmation(@sitecustomer).deliver
       format.html { redirect_to root_url, notice: 'User is successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @sitecustomer.errors, status: :unprocessable_entity }
      end
    end
   end
end
