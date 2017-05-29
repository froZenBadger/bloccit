class PostsController < ApplicationController
  def index
    @posts = censor(Post.all)
  end

  def show
  end

  def new
  end

  def edit
  end

  def censor(posts)
    posts.each do |post|
        post.title =  'SPAM'  if post.id == 1
        post.title = 'SPAM' if post.id % 5 == 0
    end
    return posts
  end

end
