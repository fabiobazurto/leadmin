module ApplicationHelper

  def isMenuActive( menu)
    "active"  if params[:controller]==menu
  end

  def isActionActive( menu)
    "active"  if params[:action]==menu
  end  
end
