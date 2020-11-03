# == Schema Information
#
# Table name: student_ratings
#
#  id         :bigint           not null, primary key
#  rating     :integer          default(0)
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class StudentRatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
