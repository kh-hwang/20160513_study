class PostController < ApplicationController
  def index

  end

  def reply_write
    reply = Reply.new
    reply.content = params[:content]
    reply.post_id = params[:id]
  end

end
