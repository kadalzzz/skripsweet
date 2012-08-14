require 'test_helper'

class CommentsTicketTest < ActiveSupport::TestCase
 
  def test_writter_name_succes
    comment = CommentsTicket.new(:content => "Just test comment", :user_id => users(:admin2).id)
    assert_not_nil comment.writter_name
    assert_equal comment.writter_name, users(:admin2).first_name
  end
  
  def test_writter_name_failed
    comment = CommentsTicket.new(:content => "Just test comment")
    assert_empty comment.writter_name
    #assert_equal comment.writter_name, users(:admin2).first_name
  end
  
   def test_relation_between_user_and_ticket_and_comment
    ticket = Ticket.create(:short_summary => "testing rails" )
    assert_not_nil ticket
    comment = CommentsTicket.create(:content => "test_comment", :user_id => users(:admin2).id, :ticket_id => ticket.id  )
    assert_not_nil ticket.comments_tickets
    assert_not_nil users(:admin2).comments_tickets
    assert_equal ticket.comments_tickets[0].class, CommentsTicket
    assert_equal users(:admin2).comments_tickets[0].class, CommentsTicket
  end
   
end
