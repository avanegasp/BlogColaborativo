class ThemesController < ApplicationController

  def theme_posts_index
     @theme = Theme.find(params[:theme_id])
     @posts = @theme.posts.order("id DESC").all
  end

  def show
    @theme = Theme.find(params[:id])
    @post = @theme.posts.find(params[:theme_id])
  end

end
