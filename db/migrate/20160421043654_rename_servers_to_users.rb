class RenameServersToUsers < ActiveRecord::Migration
  def change
    rename_table :servers, :users
  end
end
