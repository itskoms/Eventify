class RemoveNotNullConstraintFromPartySizeInGuests < ActiveRecord::Migration[7.2]
  def change
    change_column_null :guests, :party_size, true
  end
end
