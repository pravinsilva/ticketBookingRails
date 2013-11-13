class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :showId
       t.integer :customerId
       t.float :price
       t.integer :seatNumber
      t.timestamps
    end
  end
end
