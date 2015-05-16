class Api::V1::TrendsController < ApplicationController


  def index
    trends = Trend.all
    render json: trends
  end

  def show
    trend = Trend.find(params[:id])
    render json: trend
  end

  def search
    trend = Trend.where(hashtags: params[:hashtags])
    render json: trend
  end

end