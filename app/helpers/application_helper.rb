module ApplicationHelper

  def isMenuActive( menu)
    "active"  if params[:controller]==menu
  end

  def isActionActive( menu)
    "active"  if params[:action]==menu
  end

  def flash_class(level)
    case level
        when :notice then "alert alert-warning"
        when :success then "alert alert-warning"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
  end  
end
