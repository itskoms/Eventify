class CreateGuestLists < ActiveRecord::Migration[7.2]
  def change
    create_table :guest_lists do |t|
      t.references :guest, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.string :rsvp_status

      t.timestamps
    end
  end
end
