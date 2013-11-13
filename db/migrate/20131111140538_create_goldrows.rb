class CreateGoldrows < ActiveRecord::Migration
  def change
    create_table :goldrows do |t|
       t.string :rowNumber
      t.timestamps
    end
  end
end
