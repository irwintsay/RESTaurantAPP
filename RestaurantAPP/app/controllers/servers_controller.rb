class ServersController < ApplicationController

  include SessionsHelper
  before_action :authenticate!, only: [:profile]

  def new
    @server = Server.new
  end

  def create
    server = Server.create server_params
  end

  def profile
    @server = current_server
    @tables = Table.where server_id: @server.id
    @customers = Customer.all
  end

  private

  def server_params
    params.require(:server).permit(:name, :username, :password)
  end

end # End of ServersController
