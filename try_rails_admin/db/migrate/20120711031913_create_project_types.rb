class CreateProjectTypes < ActiveRecord::Migration
  def change
    create_table :project_types do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
