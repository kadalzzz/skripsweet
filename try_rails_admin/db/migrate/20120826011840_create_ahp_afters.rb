class CreateAhpAfters < ActiveRecord::Migration
  def change
    create_table :ahp_afters do |t|
    
      t.integer :standard_a
      t.integer :satisfaction_a
      t.integer :total_user_a
      t.integer :modernity_a


      t.timestamps
    end
  end
end
