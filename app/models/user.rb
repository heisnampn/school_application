# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  name                   :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
class User < ApplicationRecord
  # == Constants ============================================================
  # == Attributes ===========================================================

    delegate :student?, to: :user_role, prefix: false, allow_nil: true
    delegate :teacher?, to: :user_role, prefix: false, allow_nil: true
    delegate :head_master?, to: :user_role, prefix: false, allow_nil: true
  
  # == Extensions ===========================================================

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # == Relationships ========================================================

    has_one :user_role
    has_one :role, through: :user_role
    has_one :student_rating

  # == Validations ==========================================================
    validates :name, :email, presence: true
  # == Scopes ===============================================================
  # == Callbacks ============================================================
  # == Nested Attributes ====================================================
  # == Class Methods ========================================================
  # == Instance Methods =====================================================
end
