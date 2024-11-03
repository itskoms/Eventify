# == Schema Information
#
# Table name: notifications
#
#  id         :integer          not null, primary key
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer          not null
#
# Indexes
#
#  index_notifications_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
require "test_helper"

class NotificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
