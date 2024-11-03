class RenameTableGiftRegistries < ActiveRecord::Migration[7.2]
  def change
    rename_table :gift_registries, :gifts
  end
end
