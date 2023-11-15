class RestaurantsController < ApplicationController
before_action :find_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    
  end

  def create

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
