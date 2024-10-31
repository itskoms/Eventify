class Event < ApplicationRecord
    has_many :budget
    has_many :guests
    has_many :gift_registry
    has_many :intenaries
    has_many :notification
end
