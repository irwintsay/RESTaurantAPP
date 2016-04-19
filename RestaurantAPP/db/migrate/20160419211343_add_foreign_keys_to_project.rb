class AddForeignKeysToProject < ActiveRecord::Migration
  def change
    add_foreign_key :tables, :servers
    add_foreign_key :customers, :tables
    add_foreign_key :orders, :customers
    add_foreign_key :orders, :items
  end
end
