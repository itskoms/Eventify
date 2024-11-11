class CreateJoinTableEventsGuests < ActiveRecord::Migration[6.1]
  def change
    create_join_table :events, :guests do |t|
      t.index :event_id
      t.index :guest_id
    end
  end
end
