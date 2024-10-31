class CreateGiftRegistries < ActiveRecord::Migration[7.2]
  def change
    create_table :gift_registries do |t|
      t.string :item_name
      t.decimal :price
      t.string :link
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
