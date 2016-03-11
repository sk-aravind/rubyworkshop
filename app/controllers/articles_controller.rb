class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end
	def update
		@articles = Article.find(params[:id])
		if @articles.update(article_params)
    		redirect_to @articles
  		else
    		render 'edit'
    	end	
	end	
	def new
		@articles = Article.new
	end
	def destroy
  		@articles = Article.find(params[:id])
  		@articles.destroy
  		redirect_to @articles
  	end	
	def edit
		@articles =Article.find (params[:id])
	end
	def create
		@articles = Article.new(article_params)

		if @articles.save
			redirect_to @articles
		else
			render 'new'
		end	
		#render plain: params[:articles].inspect
	end
	def show
		@articles = Article.find(params[:id])
	end		
	
	private
		def article_params
			params.require(:articles).permit(:title, :text)
		end
	
end


