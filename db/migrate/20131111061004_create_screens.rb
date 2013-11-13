class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.string :screenName
      t.integer :seats, :default => 150
      t.timestamps
    end
  end
end
