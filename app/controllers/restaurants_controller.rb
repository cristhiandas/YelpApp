class RestaurantsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @ratings = 0
    @restaurant.reviews.each do |review|
      @ratings += review.rating
    end
    if @ratings != 0
    (@ratings /= @restaurant.reviews.length.to_f)
    end
  end

  def new
    check_user_is_signed_in
    @restaurant = Restaurant.new
  end

  def edit
    check_user_is_signed_in
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    check_user_is_signed_in
    p current_user.id
    p restaurant_params
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def update
    check_user_is_signed_in
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    # check_user_is_signed_in
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :min_price, :max_price, :description, :category, :user_id)
  end

  def check_user_is_signed_in
    redirect_to '/users/sign_in' unless user_signed_in?
  end
end
