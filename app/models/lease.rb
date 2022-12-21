# == Schema Information
#
# Table name: leases
#
#  id           :integer          not null, primary key
#  active       :boolean          default(FALSE)
#  agreement    :text
#  end_time     :datetime
#  rent_amount  :integer
#  start_time   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#  manager_id   :integer
#  tenant_id    :integer
#
class Lease < ApplicationRecord
  belongs_to :tenant, optional: true
  belongs_to :apartment, optional: true

  def Lease.active
    Lease.where(active: true)
  end
end
