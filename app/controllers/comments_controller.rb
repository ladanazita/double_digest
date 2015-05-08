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
			redirect_to bean_path ## <- Redefine this
		else
			render "new"
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to bean_path ## Change this later
	end

	# def show
	# 	@bean = Bean.find(params[:id])
	# end

	# def new
	# 	@bean = Bean.new
	# end

	# def create
	# 	@bean = Bean.new(bean_params)
	# 	if @bean.save
	# 		redirect_to bean_path
	# 	else
	# 		render "new"
	# 	end
	# end

	# def edit
	# 	@bean = Bean.find(params[:id])
	# end

	# def update
	# 	@bean = Bean.find(params[:id])
	# 	if @bean.update_attributes(bean_params)
	# 		redirect_to bean_path
	# 	else
	# 		render "edit"
	# 	end
	# end

	private

	def comments_params
		params.require(:comment).permit(:body)
	end

end
# end of CommentsController