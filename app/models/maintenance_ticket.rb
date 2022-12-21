# == Schema Information
#
# Table name: maintenance_tickets
#
#  id           :integer          not null, primary key
#  note         :text
#  resolved     :boolean          default(FALSE)
#  urgency      :integer          default(0)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#  manager_id   :integer
#  tenant_id    :integer
#
class MaintenanceTicket < ApplicationRecord
  belongs_to :tenant
  belongs_to :apartment
  has_one :manager
end
