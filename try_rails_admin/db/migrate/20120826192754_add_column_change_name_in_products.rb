class AddColumnChangeNameInProducts < ActiveRecord::Migration
  def up
    rename_column :products, :just_testing, :standard
    
    add_column :products, :satisfaction, :integer
    add_column :products, :total_user, :integer
    add_column :products, :modernity, :integer
    add_column :products, :total_score, :integer
  end

  def down
    rename_column :products, :standard, :just_testing
    
    remove_column :products, :satisfaction
    remove_column :products, :total_user
    remove_column :products, :modernity
    remove_column :products, :total_score
  
  end
end
