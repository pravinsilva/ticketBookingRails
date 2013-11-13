class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :rowNumber
      t.integer :seatNumber
      t.boolean :status , :default => 'A'
      t.timestamps
    end
  end
end
