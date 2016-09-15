class UsersController < ApplicationController
  include AuthHelper
  include SessionsHelper

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      flash[:notice] = "User account created. Welcome!"
      redirect_to @user
    else
      flash[:error] = "There was a problem creating your account. #{@user.errors.full_messages.join(', ')}."
      redirect_to new_user_path
    end
  end

  def show
    if auth_route(@user)
      @articles = @user.articles.order("updated_at DESC")
    else
      auth_fail("access other user's profiles", root_path)
    end
  end

  def edit
    auth_fail("edit other people's user information!", @user) unless auth_route(@user)
  end

  def update
    if auth_route(@user)
      if @user.update(user_params)
        flash[:success] = "Your profile was successfully updated"
        redirect_to @user
      else
        flash[:error] = "Cannot edit your profile: #{@user.errors.full_messages.join(', ')}."
        render :edit
      end
    else
      auth_fail("update other people's user information!", @user)
    end
  end

  def destroy
    if auth_route(@user)
      @user.destroy
      flash[:success] = "Your account has been deactivated."
      redirect_to root_path
    else
      auth_fail("Your account could not be deactivated.", user_path(@user))
    end
  end

  def trial
    session[:user_id] = "1"
    flash[:success] = "Take a look around, then sign up for your own account!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :full_name, :email, :password, :password_confirmation, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
