class AddGiftRegistryToGifts < ActiveRecord::Migration[7.2]
  def change
    add_reference :gifts, :gift_registry, null: false, foreign_key: true
  end
end
