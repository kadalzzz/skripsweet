class TicketMailer < ActionMailer::Base
 def ticket_notification(email , ticket)
  @user = User.find_by_email(email)
  @ticket = ticket
  
  mail(:to => email, :subject => "You Have new Ticket in PortfolioApps", :from => "portfolioapps.wgs@gmail.com")
 end
 
 
 def update_notification(email , ticket)
  @user = User.find_by_email(email)
  @ticket = ticket
  
  mail(:to => email, :subject => "Status ticket has been updated", :from => "portfolioapps.wgs@gmail.com")
 end
end
