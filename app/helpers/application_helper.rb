module ApplicationHelper

  def flash_class(level)
    case level.to_sym
      when :notice then "alert alert-success"
      when :info then "alert alert-info"
      when :alert then "alert alert-danger"
      when :warning then "alert alert-warning"
    end
  end

  def active_page(active_page)
    @active == active_page ? "active" : ""
  end


  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  # def nice_date(dt)
  #   dt= dt.in_time_zone(current_user.time_zone || "Time.zone.name") if signed_in?
  #   dt.strftime("%m/%d/%Y 1:%M%P %Z") # 03/14/2013 9:09pm UTC
  # end
end
