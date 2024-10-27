class LoginsController < ApplicationController
  def new
    @cookies = cookies[:session_hash]
  end

  def create
    a=params[:username]
    b=params[:password]
    c=Customer.find_by(username: a)
    if c.is_password?(b)
      cookies[:session_hash]=c.session_hash
    end


  end

  def destroy
    cookies.delete :session_hash
    redirect_to '/'
  end
end
