class LocalResource < ApplicationRecord
  validates :zip,:name,:website,:address, presence: true
  geocoded_by :address

  def self.ransackable_associations(auth_object = nil)
    []
  end

  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "email", "id", "name", "phone_number", "updated_at", "website", "zip", "latitude", "longitude"]
  end

  after_validation :geocode, if: :address_changed?
end
