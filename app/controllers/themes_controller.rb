class ThemesController < ApplicationController

  def theme_posts_index

     @theme = Theme.find(params[:theme_id])
     @posts = @theme.posts.order("id DESC").all
     @themes = Theme.all
  end
end
