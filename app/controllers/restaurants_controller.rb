class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Revieew.new

  end

  def new
    #raise
    @restaurant = Restaurant.new

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
     if @restaurant.save

    redirect_to restaurants_path(@restaurant)
    else
      render :new
    end

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address,:category, :rating, :phone_number)


  end

end
