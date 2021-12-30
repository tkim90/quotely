class UsersController < ApplicationController
  def index
    puts "===CALLING USERS#INDEX"
    puts params[:username]
    @users = User.all
  end

  def showUser
    @user = User.where(:username => params[:username])[0]
    if @user
      @user_id = @user.id
      @quotes = Quote.where(:user_id => @user_id)
    else
      render :file => "#{Rails.root}/public/user_not_found.html",  :status => 404
    end
  end

  def showUserQuotes
    puts "===CALLING USERS#SHOW"
    puts params[:username]
    @user = User.where(:username => params[:username])[0]
    if @user
      @user_id = @user.id
      @quotes = Quote.where(:user_id => @user_id)
    else
      render :file => "#{Rails.root}/public/user_not_found.html",  :status => 404
    end
  end

end