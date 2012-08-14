class AddVideoLinkToProducts < ActiveRecord::Migration
  def change
    add_column :products, :video_link, :string
  
  end
end
