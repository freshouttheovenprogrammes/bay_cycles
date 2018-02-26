class WeatherDashboardController < ApplicationController
  before_action :require_user

  def index
    @temp_ranges = [[50, 59.9], [60, 69.9], [70, 79.9]]
    @precipitation_ranges = [[0, 0.49], [0.5, 0.99]]
    @conditions = Condition.all
  end
end
