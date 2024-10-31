class CreateItineraries < ActiveRecord::Migration[7.2]
  def change
    create_table :itineraries do |t|
      t.datetime :time
      t.text :description
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
