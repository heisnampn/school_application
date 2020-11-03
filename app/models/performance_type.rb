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
class PerformanceType < ApplicationRecord
  # == Constants ============================================================
  # == Attributes ===========================================================
  # == Extensions ===========================================================
  # == Relationships ========================================================
  # == Validations ==========================================================
    validates :name, :min_value, :max_value, presence: true
  # == Scopes ===============================================================
  # == Callbacks ============================================================
  # == Nested Attributes ====================================================
  # == Class Methods ========================================================
  # == Instance Methods =====================================================
end
