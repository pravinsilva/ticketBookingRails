class EventsController < ApplicationController
  def new
    @event=Event.new
    
  end
  def create
    @event=Event.new(params[:event])
    if @event.save
       render :action => "../signins/admin_page"
     else
       render "new"
    end
  end
  
  def show
    @event=Event.find(params[:id])
  end
  
  
end
