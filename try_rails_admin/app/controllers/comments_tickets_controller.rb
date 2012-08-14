class CommentsTicketsController < ApplicationController

  before_filter :require_login
  
  def new
    #@comment = CommentsTicket.new
    #redirect_to :controller => :tickets, :action => :show  
  end
  
  def create
    @comment =CommentsTicket.new(params[:comments_ticket])
      
    @ticket = Ticket.find_by_id(params[:comments_ticket][:ticket_id])
    @comments = @ticket.comments_tickets
    respond_to do |format|
      #@comment.save
      if @comment.save
        format.html { redirect_to(ticket_path(@comment.ticket_id), :notice => 'Comment was successfully created.') }
        #format.js
      else
        flash[:error] = 'Comment was failed to create.'
        render :new
      end
 
    end
  end

end
