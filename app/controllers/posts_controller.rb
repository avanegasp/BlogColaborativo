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
  end

  def edit
  end

  def delete
  end

  private
  def params_post
    params.require(:post).permit(:title, :body).merge(user_id: current_user.id)
  end

end
