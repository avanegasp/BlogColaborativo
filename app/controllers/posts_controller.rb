class PostsController < ApplicationController
  before_action :authenticate_user! 

  def index
    @post = Post.all
  end

  def show
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end
end
