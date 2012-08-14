class CreateAssetsTickets < ActiveRecord::Migration
  def change
    create_table :assets_tickets do |t|

      t.timestamps
    end
  end
end
