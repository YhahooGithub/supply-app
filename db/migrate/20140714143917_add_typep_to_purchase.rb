class AddTypepToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :typep, :string
  end
end
