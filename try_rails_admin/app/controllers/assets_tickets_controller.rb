class AssetsTicketsController < ApplicationController
  def new
  end
  
  def create
    @asset =AssetsTicket.new(params[:assets_ticket])
    
    if @asset.save
        #format.html { redirect_to(ticket_path(@comment.ticket_id), :notice => 'Comment was successfully created.') }
        #format.js
        render :new
      else
        flash[:error] = 'Assets was failed to create.'
        render :new
      end
  end
  
  def destroy
  
  end

end
