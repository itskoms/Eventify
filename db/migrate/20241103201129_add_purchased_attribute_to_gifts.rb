class AddPurchasedAttributeToGifts < ActiveRecord::Migration[7.2]
  def change
    add_column :gifts, :purchased, :boolean, default: false
  end
end
