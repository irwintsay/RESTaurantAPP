class CustomersController < ApplicationController

  def new

  end

  def create

  end

  def show
    @customer = Customer.find params[:id]
    @items = Item.all
  end
end # End of CustomersController
