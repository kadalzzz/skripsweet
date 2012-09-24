class TicketsController < ApplicationController
  before_filter :require_login
  before_filter :find_ticket, :only => [:show, :edit, :update]
  before_filter :your_ticket, :only => [ :update_status,:edit, :update]
  before_filter :is_closed, :only => [:show, :edit, :update, :update_status]

  def index
    @tickets= Ticket.all(:conditions => "status_id != '4'")
  end

  def new
    @ticket = Ticket.new
    @priorities = Priority.all.map{|x| [x.name, x.id]}
    @assign_to_users = User.all.map{|x| [x.username, x.id]}
    3.times {@ticket.assets_tickets.build}
    #ap @assets
  end
  
   def create
    @user = User.find_by_id(current_user.id)
    @ticket = @user.tickets.create(params[:ticket])
    if @ticket.save
      TicketMailer.ticket_notification(@ticket.assign_to.email, @ticket).deliver
      flash[:notice] = "Ticket was successfully created, The assign will be received the email notification"
      redirect_to tickets_path
    else
      flash[:error] = "Ticket was failed created"
      render :new
    end
  end
  
  def show
    @comments = @ticket.comments_tickets.includes(:user)
    @comment = @ticket.comments_tickets.new
    3.times {@comment.assets_comments.build}
  end
  
  def update_status
    ticket = Ticket.find_by_id(params[:id])
    ticket.update_attribute(:status_id, params[:status])
    TicketMailer.update_notification(@ticket.assign_to.email, @ticket).deliver
    redirect_to ticket_path(ticket.id)
  end
  
  def edit
    @priorities = Priority.all.map{|x| [x.name, x.id]}
    @assign_to_users = User.all.map{|x| [x.username, x.id]}
    3.times {@ticket.assets_tickets.build}
  end
  
  def update
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Ticket was successfully updated"
      redirect_to ticket_path(@ticket.id)
    else
      flash[:error] = "Ticket was failed to update"
      render :edit
    end
  end
  
  def destroy_asset
    @asset = AssetsTicket.find_by_id(params[:id])
    @ticket = @asset.ticket_id
    @asset.destroy 
    redirect_to edit_ticket_path(@ticket)
  
  end
  
  private
    def find_ticket
       @ticket = Ticket.find_by_id(params[:id])
       if @ticket.nil? 
        flash[:error] = 'Ticket was not found.'
        redirect_to tickets_path
      end
    end
    
    def your_ticket
      @ticket = Ticket.find_by_id(params[:id])
      unless @ticket.user.id == current_user.id || @ticket.assign_to.id == current_user.id 
        flash[:notice] = " It's not your ticket !!!"
        redirect_to tickets_path
      end
    end
    
    def is_closed
      @ticket = Ticket.find_by_id(params[:id])
      if @ticket.status.id == 4  
        flash[:notice] = " It's Closed Ticket"
        redirect_to tickets_path
      end
     
    end
    
  
end
