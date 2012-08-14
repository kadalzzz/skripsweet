class CreateCommentsTickets < ActiveRecord::Migration
  def change
    create_table :comments_tickets do |t|
      t.string :content
      t.string :ticket_id
      t.string :user_id
      t.timestamps
    end
  end
end
