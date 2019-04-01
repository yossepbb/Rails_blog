class CommentsController < ApplicationController

	def index
		@comment = Comment.all
	end

	def show
		
	end

	def new
		
	end

	def create

		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)

		redirect_to article_path(@article)	
		
	end
	
	def edit
		
	end

	def update
		
	end

	def destroy

		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy

		redirect_to article_path(@article)
	end

	private

	def comment_params

		params.require(:comment).permit(:commenter, :body)

	end


end
