class CreateItineraryActions < ActiveRecord::Migration[7.2]
  def change
    create_table :itinerary_actions do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :name
      t.string :description
      t.references :itinerary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
