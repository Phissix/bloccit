class PostsController < ApplicationController
  def index
    @posts = Post.all
    #each_with_index method
    @posts.each_with_index do |post, index|
      #use modulus operator
       if index % 5 == 0
        post.title = "SPAM"
       end
    end

  end

  def show
  end

  def new
  end

  def edit
  end
end
