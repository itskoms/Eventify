# == Schema Information
#
# Table name: gift_registries
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer          not null
#
# Indexes
#
#  index_gift_registries_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
require "test_helper"

class GiftRegistryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
