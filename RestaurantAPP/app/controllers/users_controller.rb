class UsersController < ApplicationController

  # include SessionsHelper
  before_action :authenticate!, only: [:profile]

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    redirect_to log_in_path
  end

  def profile
    @user = current_user
    @tables = Table.where user_id: @user.id
    @empty_tables = Table.where occupied: false, user_id: nil
    @customers = Customer.all
    @new_table = Table.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end # End of UsersController
