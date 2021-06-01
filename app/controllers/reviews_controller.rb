class ReviewsController < ApplicationController
  before_action :load_movie
  before_action :require_signin

  def index
    @reviews = @movie.reviews
  end

  def new
    @review = @movie.reviews.new
  end

  def create
    @review = @movie.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to movie_reviews_url(@movie)
      flash[:notice] = "Your review has been successfully submitted"
    else
      render :new
    end
  end

  def destroy
    @review = @movie.reviews.find(params[:id])
    @review.destroy
    redirect_to movie_reviews_url, alert: "Review deleted"
  end

  private

  def load_movie
    @movie = Movie.find_by!(slug: params[:movie_id])
  end

  def review_params
    params.require(:review).permit(:comment, :stars)
  end
end
