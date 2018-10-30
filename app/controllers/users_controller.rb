class UsersController < ApplicationController
   def create
    @user = User.new
    @user.username = params["username"]
    @user.email = params["email"]
    @user.bio = params["bio"]
    @user.save
end

  def index
    @users = User.all
  end
end