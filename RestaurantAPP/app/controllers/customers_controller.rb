class CustomersController < ApplicationController

  before_action :authenticate!

  def create
    customer = Customer.create({name: Faker::Name.name, table_id: customer_params[:table_id]})
    redirect_to table_path(customer.table_id)
  end

  def show
    @customer = Customer.find params[:id]
    @items = Item.all
  end

  private

  def customer_params
    params.permit(:table_id)
  end

end # End of CustomersController
