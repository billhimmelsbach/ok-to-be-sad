class ArticlesController < ApplicationController
  include AuthHelper

  def index
    @user = User.find_by_id(session[:user_id])
    if @user
      @articles = @user.articles
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = session[:user_id]
    if @article.save
      flash[:success] = "Your article titled \"#{@article.title}\" was successfully created"
      redirect_to @article.user
    else
      flash[:error] = "Cannot create your post: #{@article.errors.full_messages.join(', ')}."
      redirect_to new_article_path
    end
  end

  def edit
    @article = Article.find(params[:id])
    auth_fail("edit other people's article information!", @article) if !auth_route(@article.user)
  end

  def update
    set_article
    if auth_route(@article.user)
      if @article.update(article_params)
        flash[:success] = "#{@article.title} successfully updated"
        redirect_to @user
      else
        flash[:error] = "Cannot edit your post: #{@article.errors.full_messages.join(', ')}."
        render :edit
      end
    else
      auth_fail("update other people's articles", root_path)
    end
  end

  def destroy
    set_article
    if auth_route(@article.user)
      @article.destroy
      flash[:success] = "Your article titled \"#{@article.title}\" was deleted."
      redirect_to user_path(current_user)
    else
      auth_fail("delete other people's articles", root_path)
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :image, :muni_id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
