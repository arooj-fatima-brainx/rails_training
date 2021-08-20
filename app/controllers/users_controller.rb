# class UsersController < ApplicationController
#
#     def index
# 	    @users = User.all
# 	  end
#
#     def show
#         @user = User.find(params[:user_id])
#
#         # redirect_to article_path(@article)
#       end
#
#     def new
#         @user = User.new
#     end
#
#     def create
# 	    @user = User.new(name: "...", occupation: "...")
#
# 	    if @user.save
# 	      redirect_to @user
# 	    else
# 	      render :new
# 	    end
# 	end
# end
