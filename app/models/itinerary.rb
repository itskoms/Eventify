# == Schema Information
#
# Table name: itineraries
#
#  id          :integer          not null, primary key
#  description :text
#  time        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  event_id    :integer          not null
#
# Indexes
#
#  index_itineraries_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
class Itinerary < ApplicationRecord
  belongs_to :event
end
