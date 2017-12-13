class ReviewsController < ApplicationController
  # before_action :authenticate_user!

  def show
    @review = Review.find(params[:id])
  end

  def new
    check_user_is_signed_in
  end

  def create
    check_user_is_signed_in
    @review = Review.new(review_params)
    @review.save
    redirect_to @review
  end


  private

  def review_params
    params.require(:review).permit(:author, :email, :rating, :comments)
  end

  def check_user_is_signed_in
    redirect_to '/users/sign_in' unless user_signed_in?
  end
end
