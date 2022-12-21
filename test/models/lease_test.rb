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
require "test_helper"

class LeaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
