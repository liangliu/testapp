module SessionsHelper
  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= Myuser.find_by_remember_token(cookies[:remember_token])
  end

  def signed_in?
    !current_user.nil?
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  def sign_out
    self.current_user= nil
    cookies.delete(:remember_token)
  end
end
