class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(params[:post])
        @post.save
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
    end

end
