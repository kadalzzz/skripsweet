class Asset < ActiveRecord::Base
  belongs_to :product, 
             :class_name => "Product", 
             :foreign_key => "parent_id"

   has_attached_file :file, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100>"  }

end
