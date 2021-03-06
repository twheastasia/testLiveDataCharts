class ArticlesController < ApplicationController
    @count = 20
    
    def new

      @article = Article.new
    end

    skip_before_filter :verify_authenticity_token, :only => [:create]
    def create
      # render plain: params[:article].inspect
      @article = Article.new(article_params)

      if @article.save
        redirect_to @article
      else
        render 'new'
      end
      puts "----"
    end

    def show
      @article = Article.find(params[:id])
    end

    def edit
      @article = Article.find(params[:id])
 
    end

    def index
      @articles = Article.all
      @count = 10
    end

    def update
      @article = Article.find(params[:id])
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end

    def destroy
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to articles_path
    end

    private
    def article_params
      params.require(:article).permit(:title, :text)
    end
    
end
