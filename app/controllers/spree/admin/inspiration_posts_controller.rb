class Spree::Admin::InspirationPostsController < Spree::Admin::ResourceController

  def settings
    Spree::Config.inspiration_summarized = params[:settings][:inspiration_summarized]

    respond_to do |format|
      format.html {
        redirect_to admin_inspiration_posts_path
      }
    end
  end


  private

  def location_after_save
    edit_admin_inspiration_post_url(@inspiration_post)
  end
end
