module ApplicationHelper

  def navbar_active
    if params[:controller] == "tips"
      return 0
    elsif params[:controller] == "admin_users"
      return 1
    elsif params[:controller] == "pricings"
      return 2
    end

  end
  def is_class_active(needed_action=nil)
    puts "CONTROLER"
    puts controller
    if needed_action.include?(params[:action])
      return 'underlined'
    end
  end

  def is_active(controller=nil, action=nil)
    if controller == nil
      if action.include?(params[:action])
      end
    elsif action ==nil
      if params[:controller] == controller
        'active'
      end
    end
  end
end
