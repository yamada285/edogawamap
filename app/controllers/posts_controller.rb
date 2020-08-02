class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content],
                     img: params[:img])
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/maps/#{@post.park_id}")
    else
      render '/posts/new'
    end
  end
end
