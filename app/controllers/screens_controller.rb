class ScreensController < ApplicationController
  def new
    @screen=Screen.new
  end
  
  def create
  @gRows=params[:screen][:goldRows]
   @totalSeats=params[:screen][:seats]
    @screen=Screen.new(params[:screen])
    
    if @screen.save
        @rowno = 'A'
        @screenID= @screen.id
        @totalRows= (@totalSeats.to_i) / 30
        @i = 1
        @g = (@totalRows.to_i - @gRows.to_i)
        while @i <= @totalRows
            @j=1
          while @j <= 30
             @seat=Seat.new(:rowNumber => @rowno, :seatNumber => @j, :screenId => @screenID)
             @seat.save
             @j +=1
          end
          @rowno =(@rowno.ord + 1).chr
          
          if @i > @g #gold rows table insertion
            @gold_rows=Goldrow.new(:rowNumber => @rowno)
            @gold_rows.save
          end
          
          @i +=1
        end
        
       
       render :action => "../signins/admin_page"
     else
       render "new"
    end
  end
end
