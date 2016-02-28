class CreateTravelPlans < ActiveRecord::Migration
  def change
    create_table :travel_plans do |t|
      t.string :title
      t.text :description
      t.date :travel_start
      t.date :travel_end
      t.string :destination
      t.decimal :destination_lat, :precision=>10, :scale=>6
      t.decimal :destination_lng, :precision=>10, :scale=>6
      t.string :status
      t.integer :user_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
