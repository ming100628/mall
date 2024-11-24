class ShopLoginsController < ApplicationController

  def new

  end

  def create
    a=params[:username]
    b=params[:password]
    c=Shop.find_by(shopname: a)
    if c==nil
      redirect_to '/'
    elsif c.is_password?(b)
      cookies[:session_hash]=c.session_hash

    end
  end

  def index

  end

  def destroy
    cookies.delete :session_hash
    redirect_to '/'
  end
end
