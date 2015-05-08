class CommentsController < ApplicationController

	def index
		@Comments = Comment.all
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comments_params)
		if @comment.save
			redirect_to "index"
		else
			render "new"
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to "index"
	end

private

	def comments_params
		params.require(:comment).permit(:body)
	end

end
# end of CommentsController