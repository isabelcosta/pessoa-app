class UsersController < ApplicationController

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
  end
end
