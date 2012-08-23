class CreateComparsions < ActiveRecord::Migration
  def change
    create_table :comparsions do |t|

      t.timestamps
    end
  end
end
