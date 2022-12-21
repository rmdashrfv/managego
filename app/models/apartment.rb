class Apartment < ApplicationRecord
  belongs_to :building
  has_many :leases
end
