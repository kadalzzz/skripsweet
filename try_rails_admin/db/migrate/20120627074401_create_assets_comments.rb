class CreateAssetsComments < ActiveRecord::Migration
  def change
    create_table :assets_comments do |t|

      t.timestamps
    end
  end
end
