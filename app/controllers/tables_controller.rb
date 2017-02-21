class TablesController < ApplicationController

  include SessionsHelper

  def new
    @table = Table.new
  end

  def create
    table = Table.create user_id: current_user.id
    redirect_to profile_path
  end

  def show
    @table = Table.find params[:id]
    @customers = Customer.where table_id: @table.id

    @table_orders = []
    @sub_total = 0

    @customers.each do |customer|
      @orders = Order.where customer_id: customer.id
      @table_orders += @orders
    end
    @table_orders.each do |table_order|
      @sub_total += table_order.item.price
    end

    @tax_bill = (@sub_total * 0.08875).round(2)
    @total_bill = @tax_bill + @sub_total
  end

  def update
    
  end

  private

  def table_params
    params.require(:table).permit(:user, :paid)
  end

end # End of TablesController
