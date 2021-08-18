class ListsController < ApplicationController
    def index
        @list = List.all
    end
    
    def show
        @list = List.find(params[:movie])
    end
    
    #   def new
    #     @restaurant = Restaurant.new
    #   end
    
    #   def create
    #     @restaurant = Restaurant.new(Restaurant_params)
    #     if Restaurant.save
    #     redirect_to Restaurant_path(@restaurant)
    #     else
    #     render "new"
    #   end
    #   end
    # end
    
    #   private
    
    #   def restaurant_paramas
    #     params.require(:restaurant).permit(params[:name, :address, :phone_number, :category])
    #   end
    
end
