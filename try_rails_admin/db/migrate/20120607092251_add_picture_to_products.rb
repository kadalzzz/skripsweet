class AddPictureToProducts < ActiveRecord::Migration
  def change
    add_column :products, :photo_file_name, :string
    add_column :products, :photo_content_type, :string
    add_column :products, :photo_file_size, :integer
  end
end
