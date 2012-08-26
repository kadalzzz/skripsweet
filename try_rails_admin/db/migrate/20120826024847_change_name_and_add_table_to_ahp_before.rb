class ChangeNameAndAddTableToAhpBefore < ActiveRecord::Migration
  def up
    rename_column :ahp_befores, :standard_b, :stand_to_satis
    rename_column :ahp_befores, :satisfaction_b, :stand_to_tot
    rename_column :ahp_befores, :total_user_b, :stand_to_mod
    rename_column :ahp_befores, :modernity_b, :satis_to_tot
    
    add_column :ahp_befores, :satis_to_mod, :integer
    add_column :ahp_befores, :tot_to_mod, :integer
      
  end

  def down
    rename_column :ahp_befores, :stand_to_satis, :standard_b
    rename_column :ahp_befores, :stand_to_tot, :satisfaction_b
    rename_column :ahp_befores, :stand_to_mod, :total_user_b
    rename_column :ahp_befores, :satis_to_tot, :modernity_b
    
    remove_column :ahp_befores, :satis_to_mod
    remove_column :ahp_befores, :tot_to_mod
  end
end
