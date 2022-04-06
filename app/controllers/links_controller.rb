class LinksController < InheritedResources::Base

  private

    def link_params
      params.require(:link).permit(:site_name, :username, :site_icon_name, :profile_url)
    end

end
