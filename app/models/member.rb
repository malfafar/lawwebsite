class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include MembersHelper

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name
  validates_presence_of :naturality
  validates_presence_of :residence
  validates_presence_of :office
  validates_presence_of :office_address
  validates_presence_of :office_zipcode
  validates_presence_of :location_class
  validates_presence_of :personal_class
  validates_presence_of :practice_level
  validates_presence_of :office_phone


  def active_for_authentication?
    super && is_active?
  end

  def is_admin?
    if self.role >= min_admin_role
      true
    else
      false
    end
  end

  def is_active?
    if self.role != role_pending
      true
    else
      false
    end
  end

  def attempt_set_password(params)
   p = {}
   p[:password] = params[:password]
   p[:password_confirmation] = params[:password_confirmation]
   update_attributes(p)
  end

  # new function to return whether a password has been set
  def has_no_password?
   self.encrypted_password.blank?
  end

  # Devise::Models:unless_confirmed` method doesn't exist in Devise 2.0.0 anymore.
  # Instead you should use `pending_any_confirmation`.
  def only_if_unconfirmed
   pending_any_confirmation {yield}
  end

  def password_required?
  # Password is required if it is being set, but not for new records
    if !persisted?
      false
    else
      !password.nil? || !password_confirmation.nil?
    end
  end

  def self.search(search)
    where('email ILIKE :search OR name ILIKE :search', search: "%#{search}%")
  end
end
