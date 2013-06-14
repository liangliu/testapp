class SessionsController < ApplicationController
  
  def new 
  #  render
  end

  def create 
   # render 'new'
    user = Myuser.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy 
  end
end
