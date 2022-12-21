class Lease < ApplicationRecord
  belongs_to :tenant
  belongs_to :apartment

  def Lease.active
    Lease.where(active: true)
  end
end
