class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new

  end

  def create
    Customer.create(username: params[:shopname], password: params[:password])
    redirect_to '/customers'
  end
end
