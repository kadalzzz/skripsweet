class CreateTechnologyTypes < ActiveRecord::Migration
  def change
    create_table :technology_types do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
