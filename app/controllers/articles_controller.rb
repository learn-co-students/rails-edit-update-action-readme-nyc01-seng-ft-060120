class ArticlesController < ApplicationController
  # These are the actions (controller methods)
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
  
  # - The `new` action in the controller simply renders the `new` form
  def new
    @article = Article.new
  end
# - The `create` action handles inserting the form data into the database
  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end
  
  # - The `edit` action will handle rendering the `edit` form
  def edit
    @article = Article.find(params[:id])
  end

  # - The `update` action will be the method that updates the database record itself
  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
    # You could also see the `params` if you called `puts params.inspect`
    # raise params.inspect
  end

end # end of ArticlesController class
