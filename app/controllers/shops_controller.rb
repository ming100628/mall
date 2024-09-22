class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new

  end

  def create
    Shop.create(shopname: params[:shopname], password_hash: params[:password])
    redirect_to '/shops'
  end
end
