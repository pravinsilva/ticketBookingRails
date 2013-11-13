class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.integer :eventId
      t.date :showDate
      t.datetime :startTime
      t.datetime :endTime
      t.integer :screenId
      t.integer :availableTickets
      t.float :price
      t.timestamps
    end
  end
end
