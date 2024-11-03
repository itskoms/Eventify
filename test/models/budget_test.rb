# == Schema Information
#
# Table name: budgets
#
#  id          :integer          not null, primary key
#  amount      :decimal(, )
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :integer          not null
#
# Indexes
#
#  index_budgets_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
require "test_helper"

class BudgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
