class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new

  end

  def create
    customer = Customer.create(username: params[:shopname], password: params[:password], session_hash: SecureRandom.hex(100))
    cookies[:session_hash] = customer.session_hash
    redirect_to '/customers'
  end
end
