# == Schema Information
#
# Table name: user_roles
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  role_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserRole < ApplicationRecord
  # == Constants ============================================================
  # == Attributes ===========================================================
  # == Extensions ===========================================================
  # == Relationships ========================================================
    belongs_to :user
    belongs_to :role
  # == Validations ==========================================================
  # == Scopes ===============================================================
  # == Callbacks ============================================================
  # == Nested Attributes ====================================================
  # == Class Methods ========================================================
  # == Instance Methods =====================================================

  Role::ALLOWED_ROLES.each do |role_name| 
    define_method("#{role_name.parameterize.underscore}?") do 
      role.name == role_name
    end  
  end 
end
