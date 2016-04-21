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
    @session = session[:table_id]
  end

  private

  def table_params
    params.require(:table).permit(:user, :paid)
  end

end # End of TablesController
