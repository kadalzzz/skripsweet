class ChangeColumnProductAhpAfter < ActiveRecord::Migration
  def up
    change_column :products, :standard, :integer
    change_column :products, :total_score, :float
    
    change_column :ahp_afters, :standard_a, :float
    change_column :ahp_afters, :satisfaction_a, :float
    change_column :ahp_afters, :total_user_a, :float
    change_column :ahp_afters, :modernity_a, :float
  end

  def down
    change_column :products, :standard, :varchar
    change_column :products, :total_score, :integer
    
    change_column :ahp_afters, :standard_a, :integer
    change_column :ahp_afters, :satisfaction_a, :integer
    change_column :ahp_afters, :total_user_a, :integer
    change_column :ahp_afters, :modernity_a, :integer
  
  end
end
