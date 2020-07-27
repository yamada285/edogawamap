class MapsController < ApplicationController

  def new
    @map = Map.new
  end

  def index
    @maps = Map.all
    @spot = Map.find_by(id: 5)
    gon.lat = @spot.latitude
    gon.lng = @spot.longitude
  end

  def create
    @post = Post.new(content: params[:content],
                     user_id: params[:user_id],
                     park_id: params[:park_id])
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/maps/#{@post.park_id}")
    else
      render '/posts/new'
    end
  end

  def show
    @user = current_user
    @map = Map.find_by(id: params[:id])
    @post = Post.new
    @posts = Post.all.order(created_at: :desc)
  end

  private

  def map_params
    params.require(:map).permit(:address, :title, :comment)
  end

  def post_params
    params.require(:post).permit(:content, :user_id)
  end

end