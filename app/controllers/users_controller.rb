class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    @survey = Survey.new if @user.valid?
  end

end