class BlogController < ApplicationController

  def new
    
  end

  def create
    begin
      blog = Article.create!(blog_params)
      flash[:success] = "Create new blog successfully"

      render blog_path(blog)
    rescue ActiveRecord::RecordInvalid => e
      flash[:error] = "Create new blog fail."
      redirect :index
    end
  end

  def index
    @blogs = Article.all
  end

  def show
    @blog = Article.find(params[:id])
  end

  private
  def blog_params
    params.require(:article).permit(:title, :body)
  end
end
