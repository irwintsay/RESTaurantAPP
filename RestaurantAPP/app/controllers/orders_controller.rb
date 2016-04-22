class OrdersController < ApplicationController

  def create
    order = Order.create({customer_id: order_params[:customer_id], item_id: order_params[:item_id]})
    redirect_to customer_path(order.customer_id)
  end

  def destroy
    order = Order.find params[:id]
    order.destroy
    redirect_to customer_path(order_params[:customer_id])
  end

  private

  def order_params
    params.permit(:customer_id, :item_id)
  end

end # End of OrdersController
