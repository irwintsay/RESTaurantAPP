class AddColToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :seated, :boolean, default: false
    change_column_null :customers, :table_id, true
  end
end
