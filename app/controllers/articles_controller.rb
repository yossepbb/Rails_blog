class ArticlesController < ApplicationController

	def index
		
	end


	def show
		
		@article = Article.find(params[:id])
	end

	def new
		
	end

	def edit
		
	end

	def create

		# create a new article with the attributes entered by the user
		@article = Article.new(article_params)

		# save the model in the DB
		@article.save 

		# redirect the user to the show action
		redirect_to @article
	end

	def update
		
	end

	def destroy
		
	end

	# Methode privée
	private

	def article_params
		params.require(:article).permit(:title, :text)
	end
	

end
