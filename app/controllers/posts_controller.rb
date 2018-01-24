class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params_post)
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
    params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end

end
