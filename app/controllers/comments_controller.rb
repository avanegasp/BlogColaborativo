class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
        redirect_to post_path(@post.id)
      else
        @comment
        render '/posts/show'
  end
end

  def update
  end

  def edit
  end

  def delete
  end

  private
  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id)
  end
end
