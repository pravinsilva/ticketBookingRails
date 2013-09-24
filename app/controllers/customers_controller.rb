class CustomersController < ApplicationController
  def new
    @customer=Customer.new
  end
  
  def create
    @customer=Customer.new(params[:customer])
    if @customer.save
    else
      render 'new'
    end
  end
end
