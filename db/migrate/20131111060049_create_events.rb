class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventName
      t.text :description
      t.string :image
      t.string :language
      t.float :rating, :default => 0
      t.string :certificate
      t.date :startDate
      t.date :endDate 
      t.timestamps
  
   
    end
  end
end
