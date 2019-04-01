class ArticlesController < ApplicationController

	# CRUD = Create, Read, Update, Delete
	
	# Listing de tous les articles
	def index
		@articles = Article.all
	end

	#  affichage d'un article
	def show	
		@article = Article.find(params[:id])
	end

	# Affichage formulaire
	def new
		@article = Article.new
	end


	def edit
		@article = Article.find(params[:id])
	end

	# créer l'article et l'enrégistre dans la BD
	def create
		# create a new article with the attributes entered by the user
		@article = Article.new(article_params)

		# save the model in the DB
		if @article.save 
			# redirect the user to the show action
			redirect_to @article
		else
			render 'new'
		end
	end

	# Mise à jour du contenu d'un article
	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	# Suppression d'un article
	def destroy
		@article = Article.find(params[:id])

		@article.destroy

		redirect_to articles_path
	end

	# Methode privée
	private

	def article_params
		params.require(:article).permit(:title, :text)
	end
	

end
