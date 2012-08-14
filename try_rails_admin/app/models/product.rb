class Product < ActiveRecord::Base
  
  belongs_to :category
  belongs_to :project_type
  belongs_to :technology_type
  
  has_many :assets_products,  :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
  
  has_attached_file :photo, :styles => {
                                         :thumb=> "100x100#",
                                         :small=> "400x400>" }
                                         
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['name LIKE ? || description LIKE ? ', search_condition, search_condition])
  end

end



