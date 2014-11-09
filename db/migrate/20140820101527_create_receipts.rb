class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.string :receipt_doc
      t.date :receipt_date
      t.string :receipt_title
      t.references :purchase
      
      t.timestamps
    end
    add_index :receipts, :purchase_id
  end
end
