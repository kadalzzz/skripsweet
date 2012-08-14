class CommentsTicket < ActiveRecord::Base

  has_many :assets_comments,  :dependent => :destroy
  accepts_nested_attributes_for :assets_comments, :allow_destroy => true

  belongs_to :user
  belongs_to :ticket
  
  
  def writter_name
    writter_name = ""
    if self.user
      writter_name = self.user.first_name
    end
    writter_name
  end
  
  def asset
    asset = nil
    if self.assets_comments
      asset = self.assets_comments
    end
    asset
  end

end
