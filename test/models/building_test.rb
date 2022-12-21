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
require "test_helper"

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
