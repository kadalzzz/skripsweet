class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :file_file_name
      t.string :file_content_type
      t.integer :file_file_size
      t.datetime :file_updated_at
      t.string :parent_id    

      t.timestamps
    end
  end
end
