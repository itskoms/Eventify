class CreateBudgetTransactions < ActiveRecord::Migration[7.2]
  def change
    create_table :budget_transactions do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true
      t.string :description
      t.decimal :amount
      t.references :budget, null: false, foreign_key: true
      t.string :transactionType
      t.string :category

      t.timestamps
    end
  end
end
