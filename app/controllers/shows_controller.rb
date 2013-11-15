class ShowsController < ApplicationController
  def new
    @show=Show.new
   @events=Event.all
  @screens=Screen.all
  end
  
  def create
    @show=Show.new(params[:show])
    if @show.save
         render :action => "../signins/admin_page", :notice => "Show created successfully !!"
     else
       render "new"
    end
  end
  
  def show
    @shows = Show.all
    @events=Event.all
  end
  
  def show_timing
    @shows=Show.all
    @events=Event.all
  end
  
  def bookseats
    @shows=Show.all
    @screens=Screen.all
    @seats=Seat.all
  end
  
  def paynow
    @shows=Show.all
    @events = Event.all
    @customers=Customer.all
  end
end
