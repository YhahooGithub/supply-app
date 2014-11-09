class RemoveTypepFromPurchase < ActiveRecord::Migration
  def change
    remove_column :purchases, :typep, :string
  end
end
