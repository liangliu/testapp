class MyusersController < ApplicationController
  def new
    @user = Myuser.new
  end

  def show
    @user = Myuser.find(params[:id])
  end

  def create
    @user = Myuser.new(params[:myuser])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

end
