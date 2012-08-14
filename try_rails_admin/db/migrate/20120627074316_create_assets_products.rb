class CreateAssetsProducts < ActiveRecord::Migration
  def change
    create_table :assets_products do |t|

      t.timestamps
    end
  end
end
