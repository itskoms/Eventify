# == Schema Information
#
# Table name: guest_lists
#
#  id          :integer          not null, primary key
#  rsvp_status :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :integer          not null
#  guest_id    :integer          not null
#
# Indexes
#
#  index_guest_lists_on_event_id  (event_id)
#  index_guest_lists_on_guest_id  (guest_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#  guest_id  (guest_id => guests.id)
#
class GuestList < ApplicationRecord
  has_many :guest_lists, dependent: :destroy
  has_many :events, through: :guest_lists
  has_many :gift_registries
  has_many :gifts, through: :gift_registries
end
