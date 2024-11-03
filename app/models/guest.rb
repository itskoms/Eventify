# == Schema Information
#
# Table name: guests
#
#  id          :integer          not null, primary key
#  name        :string
#  rsvp_status :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :integer          not null
#
# Indexes
#
#  index_guests_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
class Guest < ApplicationRecord
  belongs_to :event
end
