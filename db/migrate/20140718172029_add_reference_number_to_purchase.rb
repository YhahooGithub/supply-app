class AddReferenceNumberToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :reference_number, :string
  end
end
