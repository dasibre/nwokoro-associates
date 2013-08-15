include Blogit
ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        # span I18n.t("active_admin.dashboard_welcome.welcome")
        # small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    #Associates dashboard panel
    columns do
      column do
        panel "Associates" do
          ul do
            Attorney.all.map do |associate|
              li link_to(associate.full_name, admin_associate_path(associate))
            end
          end
        end
    end
    end

    #Recent Posts dashboard Panel
    columns do
      column do
        panel "Recent Posts" do
          ul do
            Blogit::Post.all.map do |post|
              li link_to(post.title, news_blog.post_url(post))
            end
          end
        end
    end
    end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end  #content
end
