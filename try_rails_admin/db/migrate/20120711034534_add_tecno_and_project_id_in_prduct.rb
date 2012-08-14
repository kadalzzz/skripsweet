class AddTecnoAndProjectIdInPrduct < ActiveRecord::Migration
  def up
    add_column :products, :project_type_id, :string
    add_column :products, :technology_type_id, :string
  end

  def down
    remove_column :products, :project_type_id
    remove_column :products, :technology_type_id
  end
end
