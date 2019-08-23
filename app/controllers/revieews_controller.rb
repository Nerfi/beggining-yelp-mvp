class RevieewsController < ApplicationController
  #def new
   #  @restaurant = Restaurant.new(params[:restaurant_id])
    #@review = Review.new
  #end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
     @review = Revieew.new(review_params)
    @review.restaurant = @restaurant
     if @review.save

      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
     params.require(:revieew).permit(:content, :rating)

  end
end
