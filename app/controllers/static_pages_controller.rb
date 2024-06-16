class StaticPagesController < ApplicationController
  def home
    @topFivePosts = Post.all.order(points: :desc).limit(5)
  end
end
