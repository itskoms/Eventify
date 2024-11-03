class UpdateBudgetTransactionsTable < ActiveRecord::Migration[7.2]
  def change
    rename_column :budget_transactions, :transactionType, :transaction_type
    add_column :budget_transactions, :date, :datetime
  end
end
