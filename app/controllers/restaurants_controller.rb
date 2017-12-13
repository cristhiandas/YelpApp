class RestaurantsController < ApplicationController
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
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :min_price, :max_price, :description, :category)
  end
end
