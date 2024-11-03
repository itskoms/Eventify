# == Schema Information
#
# Table name: budget_transactions
#
#  id               :integer          not null, primary key
#  amount           :decimal(, )
#  category         :string
#  date             :datetime
#  description      :string
#  name             :string
#  transaction_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  budget_id        :integer          not null
#  event_id         :integer          not null
#
# Indexes
#
#  index_budget_transactions_on_budget_id  (budget_id)
#  index_budget_transactions_on_event_id   (event_id)
#
# Foreign Keys
#
#  budget_id  (budget_id => budgets.id)
#  event_id   (event_id => events.id)
#
require "test_helper"

class BudgetTransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
