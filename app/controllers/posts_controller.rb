class PostsController < ApplicationController
  http_basic_authenticate_with name: "tunombre", password: "tupassword", only: :dashboard
  def dashboard
    @posts = Post.all
  end

  def create
    @post = Post.create(title: params[:title], 
                        created_at: params[:created_at], 
                        image_url: params[:image_url], 
                        content: params[:content]
                        )
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end
end
