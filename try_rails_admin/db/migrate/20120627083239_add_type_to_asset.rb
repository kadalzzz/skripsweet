class AddTypeToAsset < ActiveRecord::Migration
  def change
    add_column :assets, :type, :string
  end
end
