class ArticlesController < ApplicationController
  def index
    @user = User.find_by_id(session[:user_id])
    if @user
      @articles = @user.articles
    end
  end
end
