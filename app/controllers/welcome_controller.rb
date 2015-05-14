class WelcomeController < ApplicationController

  # ACTION THAT ALLOWS ME TO RENDER MY TRENDS
  def index
    @trends = Trend.last(15)
  end
end
