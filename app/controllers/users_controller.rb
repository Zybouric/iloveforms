class UsersController < ApplicationController

   def new
     @users = User.new
   end


   def create
     @user = User.new('username' => params[:user][:username], 'email' => params[:user][:email], 'bio' => params[:user][:bio])
     if @user.save
      redirect_to users_path
  	else
      render 'new'
  	end
   end 
  
  def index
     @users = User.all
  end
  def show
  	@users = User.all
  end
end