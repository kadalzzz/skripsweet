class AssetsTicket < Asset

  belongs_to :ticket
  
  has_attached_file :file, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100>"  }

end
