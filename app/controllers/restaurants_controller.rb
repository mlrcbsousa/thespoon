class RestaurantsController < ApplicationController
  # Let's fake a database records
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    if params[:category].present? # .blank?

      category = params[:category]
      @restaurants = RESTAURANTS.select { |id, r| r[:category] == category }
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    # RESTAURANTS[:name] = params[:name], RESTAURANTS[:address] = params[:address]
  end

  def show
    id = params[:id].to_i
    @restaurant = RESTAURANTS[id]
  end
end
