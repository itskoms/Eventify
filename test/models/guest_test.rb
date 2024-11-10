# == Schema Information
#
# Table name: guests
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  party_size      :integer
#  password_digest :string           default(""), not null
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  event_id        :integer
#
# Indexes
#
#  index_guests_on_email     (email) UNIQUE
#  index_guests_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
require "test_helper"

class GuestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
