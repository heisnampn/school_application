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
class StudentRating < ApplicationRecord
  # == Constants ============================================================
  # == Attributes ===========================================================
  # == Extensions ===========================================================
  # == Relationships ========================================================
    belongs_to :user
  # == Validations ==========================================================
  # == Scopes ===============================================================
  # == Callbacks ============================================================
  # == Nested Attributes ====================================================
  # == Class Methods ========================================================
  # == Instance Methods =====================================================
end
