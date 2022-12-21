# == Schema Information
#
# Table name: buildings
#
#  id             :integer          not null, primary key
#  street_address :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  manager_id     :integer
#
class Building < ApplicationRecord
  belongs_to :manager
  has_many :apartments
end
