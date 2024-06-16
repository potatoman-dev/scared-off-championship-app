class PostsController < ApplicationController
  def index
    @posts = Post.all.page(params[:page]).order(created_at: :desc).per(6)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "投稿が完了しました"
      redirect_to post_path(@post)
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

  def points
    @post = Post.find(params[:id])
    @post.increment!(:points)
    respond_to do |format|
      format.html { redirect_to @post }
      format.js   # points.js.erb を使用するために必要
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_name, :body)
  end
end
