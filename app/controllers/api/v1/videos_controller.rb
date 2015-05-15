class Api::V1::VideosController < ApplicationController


# GET /videos
  # GET /videos.json
  def index

    @videos = Video.find_by_trend_id(params[:trend_id])
    # @videos = Video.all

    render json: @videos , root: false
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    render json: @video
    # render json: params
  end
  # POST /videos
  # POST /videos.json
  def create
    trend = Trend.find(params[:trend_id])
    

    if trend.videos.create(video_params)
      render json: @video, status: :created, location: @video
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    @video = video.find(params[:id])

    if @video.update(video_params)
      head :no_content
    else
      render json: @video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy

    head :no_content
  end

  private

  def set_video
    @video = video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:url)
  end
end