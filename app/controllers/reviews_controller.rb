class ReviewsController < ApplicationController
    def index
        @reviews = Reviews.all
    end
    def top
        @user = User.where(stars: 5)
      end
    def new
    @user = User.find(params[:user_id])
    @review = Review.new
    end
end
