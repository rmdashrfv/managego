class MaintenanceTicket < ApplicationRecord
  belongs_to :tenant
  belongs_to :apartment
  has_one :manager
end
