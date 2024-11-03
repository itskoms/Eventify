class CreateGiftRegistries < ActiveRecord::Migration[7.2]
  def change
    create_table :gift_registries do |t|
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
