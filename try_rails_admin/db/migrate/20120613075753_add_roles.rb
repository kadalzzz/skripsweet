class AddRoles < ActiveRecord::Migration

  def self.up
    create_table :roles do |role|
      role.string :name
    end
    add_column :users, :role_id, :string
    add_index :users, :role_id 

    Role.create!([
      {:name => "Admin"}, {:name => "Sales"}
    ])
    role = Role.first
    User.create!(:username => "admin", :first_name => "Admin", 
     :password => "wgsadminportfo", :password_confirmation => "wgsadminportfo", 
     :email => "feby.a@wgs.co.id",
     :role_id => role.id.to_s)
  end

  def self.down
    drop_table :roles
    remove_column :users, :role_id
  end

end
