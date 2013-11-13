class CreateCustomers < ActiveRecord::Migration
  def change
   
  create_table :customers do |t|
      t.string :email
      t.integer :points, :default => 0
      t.timestamps
    end
  end
end
