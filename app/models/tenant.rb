# == Schema Information
#
# Table name: tenants
#
#  id         :integer          not null, primary key
#  age        :integer
#  email      :string
#  first_name :string
#  last_name  :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Tenant < ApplicationRecord
  belongs_to :lease, optional: true
  belongs_to :maintenance_ticket, optional: true

  def lease
    Lease.find_by!(tenant_id: self.id)
  end
end
