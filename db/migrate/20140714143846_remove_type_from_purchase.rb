class RemoveTypeFromPurchase < ActiveRecord::Migration
  def change
    remove_column :purchases, :type, :string
  end
end
