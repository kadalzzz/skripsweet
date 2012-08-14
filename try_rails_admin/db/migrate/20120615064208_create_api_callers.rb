class CreateApiCallers < ActiveRecord::Migration
  def change
    create_table :api_callers do |t|

      t.timestamps
    end
  end
end
