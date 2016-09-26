class MemberParams < Devise::ParameterSanitizer
  def sign_in
    default_params.permit( :email, :current_password)
  end

  def sign_up
     default_params.permit(:email, :name, :password, :password_confirmation, :phone, :membership_number, :naturality, :birthday, :residence, :zip_code, :office, :office_email, :office_address, :office_phone, :office_zipcode, :office_fax, :attached_registry, :location_class, :carreer_start_date, :personal_class, :class_promotion_date, :practice_level, :level_start_date)
  end

  def account_update
      default_params.permit( :email, :name, :password, :password_confirmation, :current_password,
                            :phone, :membership_number, :naturality, :birthday, :residence, :zip_code, :office, :office_email,  :office_address, :office_phone, :office_zipcode, :office_fax, :attached_registry, :location_class, :carreer_start_date, :personal_class, :class_promotion_date, :practice_level, :level_start_date)
  end
end
