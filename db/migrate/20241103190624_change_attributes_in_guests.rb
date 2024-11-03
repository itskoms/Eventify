class ChangeAttributesInGuests < ActiveRecord::Migration[7.2]
  def change
    rename_column :guests, :name, :first_name
    add_column :guests, :last_name, :string
    add_column :guests, :party_size, :integer, null: false
    add_column :guests, :phone, :string
    add_column :guests, :email, :string
    remove_column :guests, :rsvp_status
  end
end
