class UsersController < ApplicationController

  public
  # Show all users
  def index
    @users = User.all()
  end

  # Render form to create a user
  def new
    @user = User.new()
  end

  # Create user after filling form
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path()
    else
      render 'new'
    end
  end

  def edit

  end

  def show

  end

  def update
    @user.save
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name,:email)
  end

end
