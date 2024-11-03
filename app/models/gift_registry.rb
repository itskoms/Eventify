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
class GiftRegistry < ApplicationRecord
  belongs_to :event
  has_many :gifts, dependent: :destroy
end
