class CustomersController < ApplicationController

  before_action :authenticate!

  def create
    customer = Customer.create({name: Faker::Name.name, table_id: customer_params[:table_id]})
    table = Table.find customer.table_id
    table.update occupied: true, user_id: current_user.id
    redirect_to table_path(customer.table_id)
  end

  def show
    @customer = Customer.find params[:id]
    @items = Item.all
    @orders = Order.where customer_id: @customer.id
  end

  def update_all
    table = Table.find customer_params[:table_id]
    @customers = Customer.where table_id: table.id

    @customers.each do |customer|
      customer.update table_id: nil
    end

    table.update user_id: nil, occupied: false
    redirect_to profile_path
  end

  private

  def customer_params
    params.permit(:table_id)
  end

end # End of CustomersController
