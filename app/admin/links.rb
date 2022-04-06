ActiveAdmin.register Link do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :site_name, :username, :site_icon_name, :profile_url
  #
  # or
  #
  # permit_params do
  #   permitted = [:site_name, :username, :site_icon_name, :profile_url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
