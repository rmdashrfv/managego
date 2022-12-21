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
require "test_helper"

class ApartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
