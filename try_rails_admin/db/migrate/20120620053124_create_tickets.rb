class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :short_summary
      t.string :full_description
      t.string :status_id
      t.string :priority_id
      t.string :user_id
      t.string :assign_to_id

      t.timestamps
    end
  end
end
