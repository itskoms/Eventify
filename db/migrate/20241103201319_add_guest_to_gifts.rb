class AddGuestToGifts < ActiveRecord::Migration[7.2]
  def change
    add_reference :gifts, :guest, null: false, foreign_key: true
  end
end
