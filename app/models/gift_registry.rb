# == Schema Information
#
# Table name: gift_registries
#
#  id         :integer          not null, primary key
#  item_name  :string
#  link       :string
#  price      :decimal(, )
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
end
