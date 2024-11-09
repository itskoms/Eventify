# == Schema Information
#
# Table name: guests
#
#  id              :integer          not null, primary key
#  email           :string
#  first_name      :string
#  last_name       :string
#  party_size      :integer          not null
#  password_digest :string           default(""), not null
#  phone           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  event_id        :integer          not null
#
# Indexes
#
#  index_guests_on_email     (email) UNIQUE
#  index_guests_on_event_id  (event_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#
class Guest < ApplicationRecord
  has_secure_password
  has_many :guest_lists, dependent: :destroy
  has_many :events, through: :guest_lists
  has_many :gift_registries
  has_many :gifts, through: :gift_registries

  validates :email, presence: true, uniqueness: true
end
