class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.text :description
      t.date :delivered_at

      t.timestamps
    end
  end
end
