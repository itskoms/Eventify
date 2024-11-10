class RemoveNotNullConstraintFromEventIdInGuests < ActiveRecord::Migration[7.2]
  def change
    change_column_null :guests, :event_id, true
  end
end
