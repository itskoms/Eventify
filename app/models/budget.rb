# == Schema Information
#
# Table name: budgets
#
#  id           :integer          not null, primary key
#  description  :text
#  total_budget :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  event_id     :integer          not null
#
# Indexes
#
#  index_budgets_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
class Budget < ApplicationRecord
  belongs_to :event
  has_many :budget_transactions, dependent: :destroy
end
