class UsersController < ApplicationController
  include AuthHelper
  include SessionsHelper

  def new
    @user = User.new
    render :new
  end

  def create
    set_user
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
    @user = User.find(params[:id])
    @articles = @user.articles.order("updated_at DESC")
    render :show
  end

  def edit
    @user = User.find(params[:id])
    auth_fail("edit other people's user information!", @user) if !auth_route(@user)
  end

  def update
    @user = User.find(params[:id])
    # params.delete(:password) if params[:password].blank?
    # params[:user].delete(:password_confirmation) if params[:password_confirmation].blank?
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
    @user = User.find(params[:id])
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
    flash[:success] = "Here's a sample account to take for a spin. Take a look around, then sign up for your own account!"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :full_name, :email, :password, :password_confirmation, :image)
  end

  def set_user
    @user = User.new(user_params)
  end
end
