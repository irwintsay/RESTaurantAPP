class ChangeTablesColumnServerIdToUserId < ActiveRecord::Migration
  def change
    rename_column :tables, :server_id, :user_id
  end
end
