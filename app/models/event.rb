# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  date        :datetime
#  description :text
#  location    :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
    has_many :budget
    has_and_belongs_to_many :guests
    has_one :guest_list
    has_many :gift_registry
    has_many :itinerary
    has_many :notification
    
end
