require 'test_helper'

class TicketTest < ActiveSupport::TestCase
 
  def test_relation_between_ticket_and_priority
    ticket = Ticket.create(:short_summary => "testing rails" )
    assert_not_nil ticket
    comment = CommentsTicket.create(:content => "test_comment", :user_id => users(:admin2).id, :ticket_id => ticket.id  )
    assert_not_nil ticket.comments_tickets
    assert_not_nil users(:admin2).comments_tickets
    assert_equal ticket.comments_tickets[0].class, CommentsTicket
    assert_equal users(:admin2).comments_tickets[0].class, CommentsTicket
  end
  
end
