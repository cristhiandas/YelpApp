class RestaurantsController < ApplicationController
  def new
  end

  def create
    # render plain: params[:restaurant].inspect
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save
    redirect_to @restaurant
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :min_price, :max_price, :description, :catergory)
  end
end
