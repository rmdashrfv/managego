class Tenant < ApplicationRecord
  belongs_to :lease
  belongs_to :maintenance_ticket
end
