class AddTestToProduct < ActiveRecord::Migration
  def change
    add_column :products, :just_testing, :string
  end
end
