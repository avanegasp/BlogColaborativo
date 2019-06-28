class PostsController < ApplicationController
  before_action :authenticate_user! , except: [:index, :show]

  def index
    @posts = Post.order("id DESC").all
    @tech_theme = Theme.find_by(theme_name:"Tecnología")
    @programation_theme = Theme.find_by(theme_name:"Programación")
    @series_theme = Theme.find_by(theme_name:"Series")
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

# @post = Post.find(params[:id])
# @comments = @post.comments.create(params[:comment])
  def create
    @theme = Theme.find(params[:post][:theme_id])
    @post = @theme.posts.new(params_post)
    if @post.save
      redirect_to posts_path, notice: "Tu entrada se ha guardado con exito."
    else
      render :new
    end
  end

  def update
    post = Post.find(params[:id])
    if post.update(params_post)
      redirect_to post_path, notice: "El producto a sido modificado con exito"
    else
      render :edit
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path, notice: "El post fue eliminado con exito"
  end

  private
  def params_post
    params.require(:post).permit(:title, :body, :theme_id, :header_image, uploads:[]).merge(user_id: current_user.id)
  end
end
