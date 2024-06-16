class StaticPagesController < ApplicationController
  def home
    @topFivePosts = Post.all.limit(5)
  end
end
