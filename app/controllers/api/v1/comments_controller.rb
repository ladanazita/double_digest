class Api::V1::CommentsController < ApplicationController

  def index
     @comments = Comment.find_by_trend_id(params[:trend_id])
     render json: @comments
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :trend_id, :body)
  end

end
