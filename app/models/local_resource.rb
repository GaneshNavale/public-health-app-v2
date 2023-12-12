class LocalResource < ApplicationRecord
  validates :zip,:name,:website,:address, presence: true
  def self.ransackable_attributes(auth_object = nil)
    ["address", "created_at", "email", "id", "name", "phone_number", "updated_at", "website", "zip"]
  end
end
