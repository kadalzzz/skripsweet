class AddBelongIdInAsset < ActiveRecord::Migration
  def up
    add_column :assets, :product_id, :string
    add_column :assets, :ticket_id, :string
    add_column :assets, :comments_ticket_id, :string
  end
 

  def down
    remove_column :assets, :product_id
    remove_column :assets, :ticket_id
    remove_column :assets, :comments_ticket_id
  end
end
