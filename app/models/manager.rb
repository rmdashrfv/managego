# == Schema Information
#
# Table name: managers
#
#  id         :integer          not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Manager < ApplicationRecord
  has_many :buildings
  has_many :apartments, through: :buildings
  has_many :leases, through: :apartments

  def active_leases
    Lease.where(active: true, manager_id: self.id)
  end
end
