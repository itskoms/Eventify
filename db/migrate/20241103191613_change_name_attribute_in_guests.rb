class ChangeNameAttributeInGuests < ActiveRecord::Migration[7.2]
  def change
    change_column :guests, :first_name, :string
  end
end
