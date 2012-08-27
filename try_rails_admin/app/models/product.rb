class Product < ActiveRecord::Base
  
  before_create :initiation
  before_update :initiation
  
  belongs_to :category
  belongs_to :project_type
  belongs_to :technology_type
  
  has_many :assets_products,  :dependent => :destroy

  validates :name, :presence => true, :uniqueness => true
  
  has_attached_file :photo, :styles => {
                                         :thumb=> "100x100#",
                                         :small=> "400x400>" }
  
  def initiation   
    self.total_score = Algorithm.bayes_score(self.standard, self.satisfaction, self.total_user, self.modernity)                                      
  end
  
  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['name LIKE ? || description LIKE ? ', search_condition, search_condition])
  end

end



