class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_label_nrs
  before_action :load_sub_footer_partners
  protect_from_forgery with: :exception

  layout :layout_by_resource

  include MembersHelper
  def devise_parameter_sanitizer
		if resource_class == Member
			MemberParams.new(Member, :member, params)
    else
	    super # Use the default one
	  end
	end

  def layout_by_resource
    if member_signed_in? && current_member.is_admin? && controller_name != "general_pages" && !devise_controller?
      "admin"
    else
      "application"
    end
  end

  def set_label_nrs
    if member_signed_in? && current_member.is_admin?
      @pending_members_count = Member.where(role: role_pending).count
    end
  end

  protected

  def load_sub_footer_partners
    @home_partners = Partner.first(4)
    @show_more_button = Partner.count > 5 ? true : false
  end

end
