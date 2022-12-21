# == Schema Information
#
# Table name: apartments
#
#  id          :integer          not null, primary key
#  apt_no      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#  lease_id    :integer
#
class Apartment < ApplicationRecord
  belongs_to :building, optional: true
  has_many :leases

  def create_lease(rent_amount, tenant)
    Lease.create!(apartment_id: self.id, rent_amount: rent_amount, manager_id: self.building.manager.id)
  end

  def add_tenant_to_lease(tenant, lease)
    # lease.update(tenant_id: tenant.id, active: true)
    lease.tenant = tenant
    lease.active = true
    self.lease_id = lease.id
    lease.save
  end
end
