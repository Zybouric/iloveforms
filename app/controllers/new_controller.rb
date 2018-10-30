class NewController < ApplicationController
	def new
    @user = User.new
	end
end
