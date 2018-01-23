class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end

  private
  def params_post
    params.require(:product).permit(:title, :body).merge(user_id: current_user)
  end

end
