class PostController < ApplicationController
  def index
    indexpost = Post.all.reverse

  end

  def write
    newpost = Post.new
    newpost.title = params[:title]
    newpost.content = params[:content]
    newpost.save
  end

  def reply_write
    reply = Reply.new
    reply.content = params[:content]
    reply.post_id = params[:id]
  end

end
