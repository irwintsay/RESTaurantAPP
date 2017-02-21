class RemoveTablesUserIdConstraint < ActiveRecord::Migration
  def change
    change_column :tables, :user_id, :integer, :null => true
  end
end
