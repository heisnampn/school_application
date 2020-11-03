# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Role < ApplicationRecord
  # == Constants ============================================================
   
   ALLOWED_ROLES = ['Head Master', 'Teacher', 'Student'].freeze
   
  # == Attributes ===========================================================
  # == Extensions ===========================================================
  # == Relationships ========================================================
    has_many :user_roles
    has_many :users, through: :user_roles
  # == Validations ==========================================================
    validates :name, presence: true
  # == Scopes ===============================================================
  # == Callbacks ============================================================
  # == Nested Attributes ====================================================
  # == Class Methods ========================================================
  # == Instance Methods =====================================================
end
