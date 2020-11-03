# == Schema Information
#
# Table name: performance_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  min_value  :integer          default(1)
#  max_value  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class PerformanceTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
