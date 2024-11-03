# == Schema Information
#
# Table name: gifts
#
#  id               :integer          not null, primary key
#  item_name        :string
#  link             :string
#  price            :decimal(, )
#  purchased        :boolean          default(FALSE)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  event_id         :integer          not null
#  gift_registry_id :integer          not null
#  guest_id         :integer          not null
#
# Indexes
#
#  index_gifts_on_event_id          (event_id)
#  index_gifts_on_gift_registry_id  (gift_registry_id)
#  index_gifts_on_guest_id          (guest_id)
#
# Foreign Keys
#
#  event_id          (event_id => events.id)
#  gift_registry_id  (gift_registry_id => gift_registries.id)
#  guest_id          (guest_id => guests.id)
#
class Gift < ApplicationRecord
  belongs_to :gift_registry
  belongs_to :guest
end
