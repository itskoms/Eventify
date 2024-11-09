class AddAuthenticationToGuests < ActiveRecord::Migration[7.2]
  def change
    add_column :guests, :password_digest, :string, null: false, default: ""
    add_index :guests, :email, unique: true
  end
end
