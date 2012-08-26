class CreateAhpBefores < ActiveRecord::Migration
  def change
    create_table :ahp_befores do |t|
      
      t.integer :standard_b
      t.integer :satisfaction_b
      t.integer :total_user_b
      t.integer :modernity_b

      t.timestamps
    end
  end
end
