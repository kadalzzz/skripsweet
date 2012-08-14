class RemoveFileFieldInAll < ActiveRecord::Migration
  def up
    remove_column :products, :pdf_file_name
    remove_column :products, :pdf_content_type
    remove_column :products, :pdf_file_size
    
    remove_column :tickets, :file_file_name
    remove_column :tickets, :file_content_type
    remove_column :tickets, :file_file_size
    remove_column :tickets, :file_updated_at
    
    remove_column :comments_tickets, :file_file_name
    remove_column :comments_tickets, :file_content_type
    remove_column :comments_tickets, :file_file_size
    remove_column :comments_tickets, :file_updated_at
  end

  def down
    add_column :products, :pdf_file_name, :string
    add_column :products, :pdf_content_type, :string
    add_column :products, :pdf_file_size, :integer
    
    add_column :tickets, :file_file_name, :string
    add_column :tickets, :file_content_type, :string
    add_column :tickets, :file_file_size, :integer
    add_column :tickets, :file_updated_at, :datetime
    
    add_column :comments_tickets, :file_file_name, :string
    add_column :comments_tickets, :file_content_type, :string
    add_column :comments_tickets, :file_file_size, :integer
    add_column :comments_tickets, :file_updated_at, :datetime
  end
end
