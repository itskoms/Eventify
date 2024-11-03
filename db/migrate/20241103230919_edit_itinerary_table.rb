class EditItineraryTable < ActiveRecord::Migration[7.2]
  def change
    add_column :itineraries, :start_time, :datetime
    add_column :itineraries, :end_time, :datetime
    add_column :itineraries, :date, :datetime
    
    remove_column :itineraries, :time
  end
end
