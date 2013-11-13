class CreateScreenTimings < ActiveRecord::Migration
  def change
    create_table :screen_timings do |t|
      t.integer :screenId
      t.integer :showId
      t.date :showDate
      t.datetime :startTime
      t.datetime :endTime
      t.timestamps
    end
  end
end
