class TrendsController < ApplicationController

  def index
    @trends = Trend.take(20)
  end

end