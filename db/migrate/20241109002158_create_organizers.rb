class CreateOrganizers < ActiveRecord::Migration[7.2]
  def change
    create_table :organizers do |t|
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string :first_name
      t.string :last_name

      t.timestamps
    end

    add_index :organizers, :email, unique: true
  end
end
