class CreateAlgorithms < ActiveRecord::Migration
  def change
    create_table :algorithms do |t|

      t.timestamps
    end
  end
end
