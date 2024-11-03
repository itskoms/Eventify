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
    has_one :budget, dependent: :destroy
    has_one :guest_list, dependent: :destroy
    has_one :gift_registry, dependent: :destroy
    has_one :itinerary, dependent: :destroy

    has_and_belongs_to_many :guests, dependent: :destroy
    
    has_many :budget_transactions, through: :budget, dependent: :destroy
    has_many :gifts, through: :gift_registry, dependent: :destroy
    has_many :itinerary_actions, through: :itinerary, dependent: :destroy
    has_many :notifications, dependent: :destroy
    
end
