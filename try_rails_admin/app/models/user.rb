class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  has_many :tickets,  :dependent => :destroy
  
  has_many :comments_tickets,  :dependent => :destroy
  
  belongs_to :role
  #devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :password, :presence => true, :confirmation => true

  attr_accessible :email, :password, :password_confirmation, :remember_me, :username,
                  :first_name, :age, :role_id
  attr_accessor :password, :password_confirmation
  before_create :encrypt_password

                  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.encrypted_password == BCrypt::Engine.hash_secret(password, user.encrypted_password)
      user
    else
      nil
    end
  end

  def encrypt_password
    self.encrypted_password = BCrypt::Password.create(self.password)
  end
  
  def is_admin?
    admin = false 
    role_admin = Role.find_by_name("Admin")
    admin = true if !role_admin.blank? && role_admin.id.to_s == self.role_id
    admin
  end       
                  
end
