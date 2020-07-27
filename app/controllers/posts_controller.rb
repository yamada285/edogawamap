class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/maps")
    else
      render '/posts/new'
    end
  end
end
