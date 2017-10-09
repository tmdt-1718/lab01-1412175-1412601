class BlogController < ApplicationController

  def new
    if !current_user
      redirect_to login_path
    end
  end

  def create
    begin
      @blog = Article.create!(title: params[:article][:title], body: params[:article][:body], user_id: current_user.id)
      flash[:success] = "Create new blog successfully"

      redirect_to blog_path(@blog)
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
