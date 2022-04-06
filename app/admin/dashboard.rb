# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Links" do
          ul do
            Link.last(5).map do |link|
              li link_to(link.site_name, admin_link_path(link))
            end
          end
        end
      end
    end
  end # content
end
