class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :customer, null: false
      t.references :item, null: false
      t.timestamps null: false
    end
  end
end
