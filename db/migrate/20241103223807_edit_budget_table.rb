class EditBudgetTable < ActiveRecord::Migration[7.2]
  def change
    rename_column :budgets, :amount, :total_budget
  end
end
