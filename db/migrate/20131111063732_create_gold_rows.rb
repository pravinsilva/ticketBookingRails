class CreateGoldRows < ActiveRecord::Migration
  def change
    create_table :gold_rows do |t|
      t.integer :rowNumber
      t.timestamps
    end
  end
end
