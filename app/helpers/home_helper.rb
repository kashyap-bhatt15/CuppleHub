module HomeHelper
  def resource_name
    :couple
  end
 
  def resource
     @resource  ||= Couple.new
  end
 
  def devise_mapping
     @devise_mapping  ||= Devise.mappings[:couple]
  end
end
