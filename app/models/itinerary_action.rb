# == Schema Information
#
# Table name: itinerary_actions
#
#  id           :integer          not null, primary key
#  description  :string
#  end_time     :datetime         not null
#  name         :string
#  start_time   :datetime         not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  itinerary_id :integer          not null
#
# Indexes
#
#  index_itinerary_actions_on_itinerary_id  (itinerary_id)
#
# Foreign Keys
#
#  itinerary_id  (itinerary_id => itineraries.id)
#
class ItineraryAction < ApplicationRecord
  belongs_to :itinerary
  
end
