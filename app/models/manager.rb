class Manager < ApplicationRecord
  has_many :buildings
  has_many :apartments, through: :buildings
  has_many :leases, through: :apartments

  def active_leases
    Lease.where(active: true, manager_id: self.id)
  end
end
