class RenameNameColumnInGuests < ActiveRecord::Migration[7.2]
  def change
    rename_column :guests, :name, :first_name
  end
end
