class Ticket < ActiveRecord::Base
  has_many :comments_tickets,  :dependent => :destroy
  has_many :assets_tickets,  :dependent => :destroy
  #attr_accessible :assets_tickets
  accepts_nested_attributes_for :assets_tickets, :allow_destroy => true
  
  belongs_to :priority
  belongs_to :status
  belongs_to :user
  belongs_to :assign_to,
             :class_name => "User", 
             :foreign_key => "assign_to_id" 
             
  #scope :my_tickets, where("assign_to_id = #{current_user.id}")

  
  
end
