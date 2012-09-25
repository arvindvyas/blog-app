class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params[:comment])
  	@comment.save

  	redirect_to @post
  end

  def destroy
  	@comment = Comment.find(params[:id]).destroy
  	redirect_to @comment.post
  end
end
