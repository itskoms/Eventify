# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  date        :datetime
#  description :text
#  end_time    :datetime
#  location    :string
#  start_time  :datetime
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

    validates :title, presence: true
    validates :start_time, presence: true
    validates :end_time, presence: true
    validates :location, presence: true

    validate :date_must_be_in_the_future

    private

    def date_must_be_in_the_future
        if date.present? && date < Time.current
          errors.add(:date, "must be in the future")
        end
      end
    
end
