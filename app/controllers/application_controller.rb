class ApplicationController < ActionController::Base

  before_action :set_restaurant_count

  def set_restaurant_count
    @restaurant_count = Restaurant.count
  end

end
