class AddPdfColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pdf_file_name, :string
    add_column :products, :pdf_content_type, :string
    add_column :products, :pdf_file_size, :integer
  end
end
