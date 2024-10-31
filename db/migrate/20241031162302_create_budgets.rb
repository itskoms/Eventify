class CreateBudgets < ActiveRecord::Migration[7.2]
  def change
    create_table :budgets do |t|
      t.decimal :amount
      t.text :description
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
