class CreatePricingPolicies < ActiveRecord::Migration
  def change
    create_table :pricing_policies do |t|
    t.integer  "eventId"
    t.date     "showDate"
    t.float "basePrice"
    t.float  "morning"
    t.float  "afternoon"
    t.float  "evening"
    t.float  "weekend"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
      t.timestamps
    end
  end
end
