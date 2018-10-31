class UsersController < ApplicationController

   def new
     @users = User.new
   end


   def create
   		if params.nil?
     		@user = User.new('username' => params[:name], 'email' => params[:email], 'bio' => params[:bio])
	    else
     		@user = User.new('username' => params[:user][:username], 'email' => params[:user][:email], 'bio' => params[:user][:bio])
     	end
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