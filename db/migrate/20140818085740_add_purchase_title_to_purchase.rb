class AddPurchaseTitleToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :purchase_title, :string
  end
end
