class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :link, :string
    add_column :products, :description, :string  
  end
end
