class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :pn
      t.string :nsn
      t.decimal :cost
      t.integer :stock

      t.timestamps
    end
  end
end
