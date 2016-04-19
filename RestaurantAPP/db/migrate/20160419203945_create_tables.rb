class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :server, null: false
      t.timestamps null: false
    end
  end
end
