class HomesController < ApplicationController
  def index
    @events=Event.all
    @shows=Show.all
  end
end
